require 'rake'
require 'erb'

desc "link Sublime Text configuration files"
task :link_sublime_text_files do
  `ln -sf '/Users/rgreen/code/dotfiles/sublime/Default (OSX).sublime-keymap' '/Users/rgreen/Library/Application Support/Sublime Text 3/Packages/User/'`
  `ln -sf '/Users/rgreen/code/dotfiles/sublime/Preferences.sublime-settings' '/Users/rgreen/Library/Application Support/Sublime Text 3/Packages/User/'`
  `ln -sf '/Users/rgreen/code/dotfiles/sublime/puts-debug.sublime-snippet'   '/Users/rgreen/Library/Application Support/Sublime Text 3/Packages/User/'`
end

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  files = Dir['*'] - %w[Rakefile README.md osx brew]
  files.each do |file|
    system %Q{mkdir -p "$HOME/.#{File.dirname(file)}"} if file =~ /\//

    filename = ".#{file.sub(/\.erb$/, '')}"
    filepath = File.join ENV['HOME'], filename

    if File.exist?(filepath)
      if File.identical? file, filepath
        puts "identical ~/#{filename}"
      elsif replace_all
        replace_file(file)
      else
        print "overwrite ~/#{filename}? [ynadq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        when 'd'
          diff(file, filepath)
          exit
        else
          puts "skipping ~/#{filename}"
        end
      end
    else
      link_file(file)
    end
  end
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file.sub(/\.erb$/, '')}"}
  link_file(file)
end

def link_file(file)
  if file =~ /.erb$/
    puts "generating ~/.#{file.sub(/\.erb$/, '')}"
    File.open(File.join(ENV['HOME'], ".#{file.sub(/\.erb$/, '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  elsif file =~ /zshrc$/ # copy zshrc instead of link
    puts "copying ~/.#{file}"
    system %Q{cp "$PWD/#{file}" "$HOME/.#{file}"}
  else
    puts "linking ~/.#{file}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
  end
end

def diff(file1, file2)
  system %Q{diff #{file1} #{file2}}
end
