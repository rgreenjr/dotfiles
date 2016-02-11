require "rake"

desc "symlink dot files"
task :symlink_dot_files do
  glob("*", %w(gitconfig install.sh osx Rakefile README.md)).each do |entry|
    symlink_file entry, File.join(Dir.home, ".#{entry}")
  end
end

desc "symlink atom files"
task :symlink_atom_files do
  glob("atom/*").each do |entry|
    symlink_file entry, File.join(Dir.home, ".#{entry}")
  end
end

desc "symlink sublime text files"
task :symlink_sublime_text_files do
  base = File.join(Dir.home, "Library/Application Support/Sublime Text 3/Packages/User/")
  glob("sublime/*", %w(NOTES.md)).each do |entry|
    symlink_file entry, File.join(base, File.basename(entry))
  end
end

def symlink_file(source, target)
  puts "symlinking #{source}"
  system "ln -sf '#{File.join(Dir.pwd, source)}' '#{target}'"
end

def glob(directory, ignore = [])
  entries = Dir.glob(directory).select { |f| File.file?(f) }
  entries.reject { |f| ignore.include? File.basename(f) }
end

task default: [
  :symlink_dot_files,
  :symlink_atom_files,
  :symlink_sublime_text_files
]
