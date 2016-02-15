# Script to install binaries

# install Homebrew package manager
if ! which -s brew ; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install core tools
brew install boot2docker
brew install ccat
brew install docker
brew install docker-compose
brew install git
brew install hr
brew install htop
brew install httpie
brew install node
brew install pick
brew install postgresql
brew install redis
brew install ssh-copy-id
brew install tidy-html5
brew install tree

# install non-core tools
brew tap thoughtbot/formulae
brew install pick

# install optional applications
brew cask install alfred
brew cask install atom
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# install video_transcoding packages
brew install ffmpeg
brew install mkvtoolnix
brew install mp4v2
brew install mplayer
brew cask install handbreakcli

# install coffeescript
npm install -g coffee-script

# install latest bash, add it to allowed shells list, and make it default
brew install bash
if [ $(cat /private/etc/shells | grep '/usr/local/bin/bash' | wc -l) -eq 0 ]; then
  sudo bash -c 'echo /usr/local/bin/bash >> /private/etc/shells'
fi
chsh -s /usr/local/bin/bash

# install bash-completion
brew install bash-completion

# install ruby gems
gem install rubocop

# install atom packages
apm install atom-beautify
apm install emmet
apm install file-icons
apm install language-elixir
apm install language-nginx
apm install language-tmux
apm install linter
apm install linter-bootlint
apm install linter-coffeelint
apm install linter-csslint
apm install linter-erb
apm install linter-jscs
apm install linter-jshint
apm install linter-jsonlint
apm install linter-markdown
apm install linter-rubocop
apm install linter-scss-lint
apm install linter-tidy
apm install merge-conflicts
apm install minimap
apm install pigments
apm install rails-rspec
apm install rubocop-auto-correct
apm install Sublime-Style-Column-Selection
apm install vim-mode
apm install vim-surround

# apm isntall atom-toggle-quotes
# apm install linter-htmlhint
# apm install linter-shellcheck
