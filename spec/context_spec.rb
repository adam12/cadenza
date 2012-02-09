require 'spec_helper'
require 'ostruct'

describe Cadenza::Context do
   it "should start with an empty stack" do
      Cadenza::Context.new.stack.should == [{}]
   end

   it "should start with an empty filter map" do
      Cadenza::Context.new.filters.should be_empty
   end

   it "should start with an empty statement map" do
      Cadenza::Context.new.statements.should be_empty
   end

   it "should begin with whiny template loading disabled" do
      Cadenza::Context.new.whiny_template_loading.should == false
   end

   it "should take a hash and define that as the stack's first element" do
      Cadenza::Context.new(:foo => "bar").stack.should == [{:foo => "bar"}]
   end

   it "should allow pushing new values onto the stack" do
      context = Cadenza::Context.new(:foo => "bar")
      context.push(:baz => "foo")

      context.stack.should == [{:foo => "bar"}, {:baz => "foo"}]
   end

   context "#clone" do
      let(:context) { Cadenza::Context.new(:foo => "bar") }

      before do
         context.add_loader Cadenza::FilesystemLoader.new(fixture_filename "templates")
         context.define_filter(:upcase, &:upcase)
         context.define_statement(:assign) {|context, name, value| context.assign(name, value) }

         context.loaders.should have(1).item
         context.filters.should have(1).item
         context.statements.should have(1).item
      end

      it "should duplicate it's stack" do
         context.clone.stack.should_not equal context.stack
         context.clone.stack.should == context.stack
      end

      it "should not duplicate the values of it's stack" do
         context.clone.stack.first[:foo].should equal context.stack.first[:foo]
      end

      it "should duplicate it's filters" do
         context.clone.filters.should_not equal context.filters
         context.clone.filters.should == context.filters
      end

      it "should not duplicate the filter definitions" do
         context.clone.filters[:upcase].should equal context.filters[:upcase]
      end

      it "should duplicate it's statements" do
         context.clone.statements.should_not equal context.statements
         context.clone.statements.should == context.statements
      end

      it "should not duplicate the statement definitions" do
         context.clone.statements[:assign].should equal context.statements[:assign]
      end

      it "should duplicate it's loader list" do
         context.clone.loaders.should_not equal context.loaders
         context.clone.loaders.should == context.loaders
      end

      it "should not duplicate the loaders inside the list" do
         context.clone.loaders.first.should equal context.loaders.first
      end
   end

   context "#lookup" do
      let(:context) do
         Cadenza::Context.new({
            :foo => {:bar => "baz"}, 
            :abc => OpenStruct.new(:def => "ghi"), 
            :alphabet => %w(a b c)
         })
      end

      it "should retrieve the value of an identifier" do
         context.lookup("foo").should == {:bar => "baz"}
      end

      it "should retrieve the value of an identifier with dot notation" do
         context.lookup("foo.bar").should == "baz"
      end

      it "should retrieve the value of an identifier in a higher scope" do
         context.push(:baz => "foo")
         context.lookup("baz").should == "foo"
      end

      it "should retreive the overriden value of an identifier in a higher scope" do
         context.push(:foo => "baz")
         context.lookup("foo").should == "baz"
      end

      it "should allow popping the top scope off the stack" do
         context.push(:foo => "baz")

         context.lookup("foo").should == "baz"

         context.pop

         context.lookup("foo").should == {:bar => "baz"}
      end

      it "should look up identifiers on an object if the object responds to that identifier" do
         context.lookup("abc.def").should == "ghi"
      end

      it "should look up array indexes" do
         context.lookup("alphabet.1").should == "b"
      end
   end

   context "#assign" do
      let(:context) { Cadenza::Context.new }

      it "should assign a value to the current stack" do
         context.lookup("foo").should be_nil

         lambda { context.assign(:foo, "bar") }.should_not change(context.stack, :length)

         context.lookup("foo").should == "bar"
      end
   end

   context "#define_filter" do
      let(:context) { Cadenza::Context.new }

      before do
         context.define_filter(:pluralize) {|input| "#{input}s" }
      end

      it "should allow defining a filter method" do
         context.filters[:pluralize].should be_a(Proc)
      end

      it "should evaluate a filter" do         
         context.evaluate_filter(:pluralize, ["bar"]).should == "bars"
      end

      it "should raise a FilterNotDefinedError if the filter is not defined" do
         lambda do
            context.evaluate_filter(:foo, ["bar"])
         end.should raise_error Cadenza::FilterNotDefinedError
      end
   end

   context "#define_statement" do
      let(:context) { Cadenza::Context.new }

      before do
         context.define_statement(:assign) {|context, name, value| context.assign(name, value) }
      end

      it "should allow defining a statement method" do
         context.statements[:assign].should be_a(Proc)
      end

      it "should evaluate a statement" do
         context.lookup("foo").should be_nil
         
         context.evaluate_statement(:assign, ["foo", 123])

         context.lookup("foo").should == 123
      end

      it "should raise a StatementNotDefinedError if the statement is not defined" do
         lambda do
            context.evaluate_statement(:foo, [])
         end.should raise_error Cadenza::StatementNotDefinedError
      end
   end

   context "loaders" do
      let(:context) { Cadenza::Context.new }
      let(:template_path) { fixture_filename("templates/fake") }
      let(:filesystem_loader) { Cadenza::FilesystemLoader.new(template_path) }
      let(:template) { FixtureSyntaxTree.new("text.parse.yml").document }

      it "should start with an empty list of loaders" do
         context.loaders.should == []
      end

      it "should allow adding a loader class" do
         context.add_loader filesystem_loader
         context.loaders.should == [filesystem_loader]
      end

      it "should push a string object as a filesystem loader" do
         path = fixture_filename("foo")
         context.add_loader(path)

         context.loaders.should have(1).item
         context.loaders[0].should be_a Cadenza::FilesystemLoader
         context.loaders[0].path.should == path
      end

      it "should return nil if no template was found" do
         context.add_loader(filesystem_loader)
         context.add_loader(Cadenza::FilesystemLoader.new(template_path))

         context.load_source("fake.html").should be_nil
         context.load_template("fake.html").should be_nil
      end

      it "should raise an error if no template was found and whiny template loading is enabled" do
         context.whiny_template_loading = true
         
         lambda do
            context.load_source("fake.html")
         end.should raise_error Cadenza::TemplateNotFoundError

         lambda do
            context.load_template("fake.html")
         end.should raise_error Cadenza::TemplateNotFoundError
      end

      it "should always raise the exception regardless of whiny template loading when the bang is provided" do
         lambda do
            context.load_source!("fake.html")
         end.should raise_error Cadenza::TemplateNotFoundError

         lambda do
            context.load_template!("fake.html")
         end.should raise_error Cadenza::TemplateNotFoundError
      end

      it "should traverse the loaders in order to find the first loaded template" do
         other_loader = Cadenza::FilesystemLoader.new(template_path)

         context.add_loader(filesystem_loader)
         context.add_loader(other_loader)

         filesystem_loader.should_receive(:load_template).with("template.html").and_return(template)
         other_loader.stub(:load_template).and_return("foo")

         context.load_template("template.html").should == template
      end

      it "should provide a method to clear the loaders" do
         context.add_loader(filesystem_loader)
         context.loaders.should_not be_empty
         context.clear_loaders
         context.loaders.should be_empty
      end
   end
end