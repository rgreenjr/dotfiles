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

# add tab completion for git
source /usr/local/etc/bash_completion.d/git-completion.bash

# add tab completion for SSH hostnames based on ~/.ssh/config (ignoring wildcards)
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;
