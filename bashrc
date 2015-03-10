if [ -z $SSH_TTY ]; then
  export PS1='\u@\h \[\e[0;32m\]\w \[\e[m\]$ '
else
  export PS1='\u@\h \[\e[0;31m\]\w \[\e[m\]$ '
fi

# core
alias cdb='cd ~/bin'
alias cdd='cd ~/Desktop'
alias cdl='cd ~/Downloads'
alias cpwd='pwd | xargs echo -n | pbcopy'
alias du='du -hcd0'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias his='history | grep'
alias hr='hr –'
alias ll='ls -lhAGp'
alias path='echo -e ${PATH//:/\\n}'
alias sshbd='ssh ron.green@blackdog'
alias sshh='ssh rgreen@whiskeyride.us.to'

function psgrep() { ps auxwww | grep -v grep | grep "$@" -i --color=auto; }

# apple
# Rebuild Launch Services database and eliminate duplicates in Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# projects
alias cdv='cd ~/code/thrive'
alias sshp='ssh production'
alias sshs='ssh staging'
alias ssht='ssh tunnel'

# ruby
alias irb='irb --readline -r irb/completion'
alias ri='ri -Tf ansi'

# rails
alias fs='foreman start'
alias glog='cat log/development.log | grep'
alias mate='mate !(@(cache|log|tmp))'
alias mm='bin/rake db:migrate && bin/rake db:rollback && bin/rake db:migrate && rake db:test:prepare'
alias mmm='dropdb thrive_development; bin/rake db:create && bin/rake db:migrate && rake db:test:prepare && bin/rake db:seed'
alias ss='bin/rails server'
alias tlog='less -r +F log/development.log'
alias unicorn_start='bundle exec unicorn -c config/unicorn.rb -D'
alias unicorn_stop='kill `cat tmp/pids/unicorn.pid`'

# postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# git
alias ghid='ghi open --claim --label devops'
alias ghie='ghi open --claim --label enhancement'
alias ghir='ghi open --claim --label refactoring'

# thrive
alias resque='TERM_CHILD=1 QUEUES=* bin/rake resque:work'

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
