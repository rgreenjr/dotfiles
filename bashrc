if [ -z $SSH_TTY ]; then
  export PS1='\u@\h \[\e[0;32m\]\w \[\e[m\]$ '
else
  export PS1='\u@\h \[\e[0;31m\]\w \[\e[m\]$ '
fi

# core
alias cdd='cd ~/Desktop'
alias cdb='cd ~/bin'
alias cdl='cd ~/Downloads'
alias ll='ls -lhAF'
alias sshh='ssh rgreen@whiskeyride.dynalias.com'
alias sshbd='ssh rgreen@blackdog'
alias sshss='ssh ron.green@sideshow.ziften.local'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias cpwd='pwd | xargs echo -n | pbcopy'
alias du='du -hcd0'


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
alias beg='bundle exec guard'
alias mm='mate !(@(cache|log|tmp))'

# mysql
alias mynd='mysql -u rgreen -p netcooler_development'
alias mynt='mysql -u rgreen -p netcooler_test'
alias msstart='sudo mysqld_safe'
alias msstop='sudo /usr/local/mysql/bin/mysqladmin shutdown'
export PATH="/usr/local/mysql/bin:$PATH"
export MANPATH="/usr/local/mysql/man:$MANPATH"

# postgres
alias psql='/usr/local/bin/psql'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl stop -m smart -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'    
alias pgstop_fast='pg_ctl stop -m fast -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'    
alias pgstop_immediate='pg_ctl stop -m immediate -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log'    
 
# git
alias gs='git status -sb'
alias gdc='git diff --cached' # show difference between the HEAD and the index
alias gdh='git diff HEAD' # show staged and unstaged changes (what would be committed)
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gx='open /Applications/Gitbox.app'

# git status | grep deleted | awk '{print \$3}' | xargs git rm # remove deleted files from git 
# git reset --hard # revert back to last local commit
# git checkout -- <file> # revert file
# git reset HEAD -- <file> # unstage file
# git add -u # stage all modified files being tracked
# git reset --hard ORIG_HEAD # revert changes of a merge
# git log origin..HEAD # show log entries

# paths
export PATH="~/bin:/usr/local/bin:/usr/local/sbin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
