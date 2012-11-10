
namespace :compile do
  
  desc "compile everything"
  task :all => [:lexer, :parser]

  desc "compile the lexer file (cadenza.rl)"
  task :lexer do
    root = File.expand_path("..", File.dirname(__FILE__))

    srcdir  = File.join(root, "src")
    srcfile = File.join(root, 'src', 'cadenza-ruby.rl')
    outfile = File.join(root, 'lib', 'cadenza', 'ragel_lexer.rb')

    #TODO: experiment with performance of -T0 -T1 -F0 -F1
    # please ensure you're running Ragel 6.7
    system %Q{ragel -R -L -F1 -I "#{srcdir}" -o "#{outfile}" "#{srcfile}"}

    puts "Regenerated lexer from source file"
  end

  namespace :lexer do
    desc "generates the graph for cadenza's ragel state machine"
    task :graph do
      root = File.expand_path("..", File.dirname(__FILE__))

      srcdir  = File.join(root, "src")
      srcfile = File.join(root, 'src', 'cadenza-ruby.rl')
      outfile = File.join(root, 'cadenza.png')

      system %Q{ragel -p -I "#{srcdir}" -V "#{srcfile}" | dot -Tpng > "#{outfile}"}

      unless `which google-chrome`.strip.empty?
        system %Q{google-chrome "#{outfile}"}
        system %Q{rm "#{outfile}"}
      end
    end
  end
  
  desc "compile the grammar file (cadenza.y) to a racc parser"
  task :parser do
    basedir = File.dirname(__FILE__)
    srcfile = File.expand_path(File.join('..', 'src', 'cadenza.y'), basedir)
    outfile = File.expand_path(File.join('..', 'lib', 'cadenza', 'racc_parser.rb'), basedir)
    
    system "racc -o \"#{outfile}\" \"#{srcfile}\""

    puts "Regenerated parser from source file"
  end
  
end