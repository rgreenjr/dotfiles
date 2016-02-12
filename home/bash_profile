# load dotfiles
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# append to the bash history file instead of overwriting it
shopt -s histappend;

# autocorrect cd path name typos
shopt -s cdspell;

# enable autocd and globstar in Bash 4 when possible
shopt -s autocd globstar 2> /dev/null;

# add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
  source /etc/bash_completion;
fi;

# add tab completion for git
source /usr/local/etc/bash_completion.d/git-completion.bash

# add tab completion for SSH hostnames based on ~/.ssh/config (ignoring wildcards)
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# load rvm into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
