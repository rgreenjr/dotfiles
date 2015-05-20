# make sure we're using the latest Homebrew
brew update

# upgrade any existing formulae
brew upgrade --all

# install core applications
brew install boot2docker
brew install brew-cask
brew install docker
brew install git
brew install hr
brew install redis
brew install ssh-copy-id
brew install tree

# install cask applications
brew cask install dropbox
brew cask install google-chrome
brew cask install vagrant
brew cask install virtualbox