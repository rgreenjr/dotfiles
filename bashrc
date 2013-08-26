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

# apple
# Rebuild Launch Services database and eliminate duplicates in Open With submenu.
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

# projects
alias cdss='cd ~/code/sideshow'

# ruby
alias irb='irb --readline -r irb/completion'
alias ri='ri -Tf ansi'

# rails
alias ss='rails server'
alias tlog='tail -f log/development.log'
alias glog='cat log/development.log | grep'
alias gg='bundle exec guard --clear'
alias mm='mate !(@(cache|log|tmp))'
alias unicorn_start='bundle exec unicorn -c config/unicorn.rb -D'
alias unicorn_stop='kill `cat tmp/pids/unicorn.pid`'
alias m='rake db:migrate && rake db:rollback && rake db:migrate && rake db:test:prepare'

# postgres
alias psqlss='psql -d sideshow_development'
alias pgstart='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias pgstop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'

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
