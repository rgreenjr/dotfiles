if [ -z $SSH_TTY ]; then
  export PS1='\u@\h \[\e[0;32m\]\w \[\e[m\]$ '
else
  export PS1='\u@\h \[\e[0;31m\]\w \[\e[m\]$ '
fi

# core
alias cdb='cd ~/bin'
alias cdd='cd ~/Desktop'
alias cdl='cd ~/Downloads'
alias cdp='cd $(find . -type d | pick)'
alias du='du -hcd0'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias hg='history | grep'
alias hp='$(history | cut -c8- | sort -u | pick)'
alias hr='hr –'
alias killp='kill $(ps -e | awk '\''{if(NR!=1) { print $4, $1 }}'\'' | pick -do | tail -n +2)'
alias ll='ls -lhAGp'


function psgrep() { ps auxwww | grep -v grep | grep "$@" -i --color=auto; }

# git
alias ghid='ghi open --claim --label devops'
alias ghie='ghi open --claim --label enhancement'
alias ghir='ghi open --claim --label refactoring'
alias gitco='git checkout $(git branch | cut -c 3- | pick)'

# postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# ruby
alias irb='irb --readline -r irb/completion'
alias ri='ri -Tf ansi'

# rails
alias fs='foreman start'
alias glog='cat log/development.log | grep'
alias mm='bin/rake db:migrate && bin/rake db:rollback && bin/rake db:migrate && rake db:test:prepare'
alias mmm='dropdb thrive_development; bin/rake db:create && bin/rake db:migrate && rake db:test:prepare && bin/rake db:seed'
alias ss='bin/rails server'
alias tlog='tail -f log/development.log'
alias unicorn_start='bundle exec unicorn -c config/unicorn.rb -D'
alias unicorn_stop='kill `cat tmp/pids/unicorn.pid`'

# thrive
alias cdv='cd ~/code/thrive'
alias sshp='ssh production'
alias sshs='ssh staging'
alias ssht='ssh tunnel'

# make history more useful
export HISTCONTROL=erasedups
export HISTSIZE=1000000
export HISTFILESIZE=1000000000
shopt -s histappend

# paths
export PATH="/Users/rgreen/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"

source /usr/local/etc/bash_completion.d/git-completion.bash

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
