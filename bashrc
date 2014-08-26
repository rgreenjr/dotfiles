if [ -z $SSH_TTY ]; then
  export PS1='\u@\h \[\e[0;32m\]\w \[\e[m\]$ '
else
  export PS1='\u@\h \[\e[0;31m\]\w \[\e[m\]$ '
fi

# core
alias cdd='cd ~/Desktop'
alias cdb='cd ~/bin'
alias cdl='cd ~/Downloads'
alias ll='ls -lhAGp'
alias sshh='ssh rgreen@whiskeyride.us.to'
alias sshbd='ssh ron.green@blackdog'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias cpwd='pwd | xargs echo -n | pbcopy'
alias du='du -hcd0'
alias his='history | grep'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias hr='hr –'
function psgrep() { ps auxwww | grep -v grep | grep "$@" -i --color=auto; }

# apple
# Rebuild Launch Services database and eliminate duplicates in Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# projects
alias cdv='cd ~/code/thrive'

# ruby
alias irb='irb --readline -r irb/completion'
alias ri='ri -Tf ansi'

# rails
alias glog='cat log/development.log | grep'
alias mate='mate !(@(cache|log|tmp))'
alias mm='bin/rake db:migrate && bin/rake db:rollback && bin/rake db:migrate && rake db:test:prepare'
alias mmm='dropdb thrive_development; bin/rake db:create && bin/rake db:migrate && rake db:test:prepare && bin/rake db:seed'
alias ss='bin/rails server'
alias tlog='less -r +F log/development.log'
alias unicorn_start='bundle exec unicorn -c config/unicorn.rb -D'
alias unicorn_stop='kill `cat tmp/pids/unicorn.pid`'

# postgres
alias pgstart='brew services start postgres'
alias pgstop='brew services stop postgres'

# make history more useful
export HISTCONTROL=erasedups
export HISTSIZE=1000000
export HISTFILESIZE=1000000000
shopt -s histappend

# paths
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

source /usr/local/etc/bash_completion.d/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
