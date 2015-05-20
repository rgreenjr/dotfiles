# load dotfiles
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# append to the bash history file instead of overwriting it
shopt -s histappend;

# autocorrect typos in path names when using `cd`
shopt -s cdspell;

# paths
export PATH="/Users/rgreen/bin:/Users/rgreen/code/video-transcoding-scripts:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"

source /usr/local/etc/bash_completion.d/git-completion.bash
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
