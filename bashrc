if [ -z $SSH_TTY ]; then
  export PS1='\u@\h \[\e[0;32m\]\w \[\e[m\]$ '
else
  export PS1='\u@\h \[\e[0;31m\]\w \[\e[m\]$ '
fi

# core
alias cdd='cd ~/Desktop'
alias cdb='cd ~/bin'
alias cdl='cd ~/Downloads'
alias ll='ls -lhAFG'
alias sshh='ssh rgreen@whiskeyride.dynalias.com'
alias sshbd='ssh ron.green@blackdog'
alias sshss='ssh ron.green@sideshow.ziften.local'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias cpwd='pwd | xargs echo -n | pbcopy'
alias du='du -hcd0'
alias psg='ps aux | grep'
alias his='history | grep'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# projects
alias cdf='cd ~/code/folio'
alias cdss='cd ~/code/sideshow'

# ruby
alias irb='irb --readline -r irb/completion'
alias ri='ri -Tf ansi'

# rails
alias ss='rails server'
alias tlog='tail -f log/development.log'
alias glog='cat log/development.log | grep'
alias guard='bundle exec guard'
alias mm='mate !(@(cache|log|tmp))'
alias unicorn_start='bundle exec unicorn -c config/unicorn.rb -D'
alias unicorn_stop='kill `cat tmp/pids/unicorn.pid`'

# mysql
alias mynd='mysql -u rgreen -p netcooler_development'
alias mynt='mysql -u rgreen -p netcooler_test'
alias msstart='sudo mysqld_safe'
alias msstop='sudo /usr/local/mysql/bin/mysqladmin shutdown'
export PATH="/usr/local/mysql/bin:$PATH"
export MANPATH="/usr/local/mysql/man:$MANPATH"

# postgres
alias psqlss='psql -d sideshow_development'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl stop -m smart -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pgstop_fast='pg_ctl stop -m fast -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'
alias pgstop_immediate='pg_ctl stop -m immediate -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'

# make history more useful
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# paths
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
