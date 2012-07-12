require 'rake'

desc "install dot files into home directory"
task :install do
  replace_all = false
  files = Dir['*'] - %w[Rakefile]
  files.each do |file|
    dotfile = ".#{file}"
    if File.exist?(File.join(ENV['HOME'], dotfile))
      if File.identical? file, File.join(ENV['HOME'], dotfile)
        puts "identical ~/#{dotfile}"
      elsif replace_all
        replace_file(dotfile)
      else
        print "overwrite ~/#{dotfile}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(dotfile)
        when 'y'
          replace_file(dotfile)
        when 'q'
          exit
        else
          puts "skipping ~/#{dotfile}"
        end
      end
    else
      link_file(dotfile)
    end
  end
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/#{file}"
  system %Q{ln -s "$PWD/#{file.gsub(/\A\./, '')}" "$HOME/#{file}"}
end
