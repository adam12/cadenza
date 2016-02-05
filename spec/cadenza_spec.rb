require 'spec_helper'

describe Cadenza do
  let(:context) { Cadenza::BaseContext.new }

  before do
    context.add_loader Cadenza::FilesystemLoader.new(Fixture.filename('templates'))
  end

  it 'should define a simple render function which will use the base context to render a string' do
    template = Fixture.read('templates/index.html.cadenza')
    expected = Fixture.read('templates/index.html')

    Cadenza.render(template, {}, context: context).should equal_html expected
  end

  it 'should allow passing a scope' do
    template = Fixture.read('templates/test.html.cadenza')

    Cadenza.render(template, { pi: 3.14159 }, context: context).should == 'abc3.14159ghi'
    Cadenza.render(template, { pi: 'def' }, context: context).should == 'abcdefghi'
  end

  it "should define a render function to load a template off the context's load system and render a string" do
    expected = Fixture.read('templates/index.html')

    Cadenza.render_template('index.html.cadenza', {}, context: context).should equal_html expected
  end

  it 'should allow passing a scope' do
    Cadenza.render_template('test.html.cadenza', { pi: 3.14159 }, context: context).should == 'abc3.14159ghi'
    Cadenza.render_template('test.html.cadenza', { pi: 'foo' }, context: context).should == 'abcfooghi'
  end
end
