# install Homebrew package manager
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install core applications
brew install boot2docker
brew install brew-cask
brew install docker
brew install docker-compose
brew install git
brew install hr
brew install httpie
brew install pick
brew install postgresql
brew install redis
brew install ssh-copy-id
brew install tree

# install latest bash, add it to allowed shells list, and make it default
brew install bash
if [ $(cat /private/etc/shells | grep '/usr/local/bin/bash' | wc -l) -eq 0 ]; then
  sudo bash -c 'echo /usr/local/bin/bash >> /private/etc/shells'
fi
chsh -s /usr/local/bin/bash

# install bash-completion
brew install bash-completion

# install cask applications
brew install caskroom/cask/brew-cask
brew cask install alfred
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
