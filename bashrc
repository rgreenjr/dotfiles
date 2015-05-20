# load dotfiles
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# make history more useful
export HISTCONTROL=erasedups
export HISTSIZE=1000000
export HISTFILESIZE=1000000000
shopt -s histappend

# paths
export PATH="/Users/rgreen/bin:/Users/rgreen/code/video-transcoding-scripts:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"

source /usr/local/etc/bash_completion.d/git-completion.bash
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
