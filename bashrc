# core
alias cdd='cd ~/Desktop'
alias cdb='cd ~/bin'
alias cdl='cd ~/Downloads'
alias ll='ls -lhAF'
alias sshh='ssh rgreen@whiskeyride.dynalias.com'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias cpwd='pwd | xargs echo -n | pbcopy'
alias du='du -hcd0'

# prompt
export PS1='\u@\h \[\033[1;32m\]\w\[\033[0m\] $ '

# projects
alias cdf='cd ~/code/folio'
alias cdss='cd ~/code/sideshow'
alias mmm='/Users/rgreen/code/mp3-tools/mp3-tools.rb'

# ruby
alias irb='irb --readline -r irb/completion'
alias ri='ri -Tf ansi'

# rails
alias tlog='tail -f log/development.log'
alias glog='cat log/development.log | grep'

# mysql
alias mynd='mysql -u rgreen -p netcooler_development'
alias mynt='mysql -u rgreen -p netcooler_test'
alias msstart='sudo mysqld_safe'
alias msstop='sudo /usr/local/mysql/bin/mysqladmin shutdown'
export PATH="/usr/local/mysql/bin:$PATH"
export MANPATH="/usr/local/mysql/man:$MANPATH"

# postgres
alias psql='/usr/local/bin/psql'
alias pgstart='/usr/local/bin/pg_ctl -D /usr/local/var/pd_data -l /tmp/logfile start'
alias pgstop='/usr/local/bin/pg_ctl -D /usr/local/var/pd_data -l /tmp/logfile stop'

# git
alias gs='git status -sb'
alias gx='open /Applications/Gitbox.app'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# paths
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
