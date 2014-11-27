#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install cli tools
xcode-select --install

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update bash profile
source ~/.bash_profile

# check if all oc
# brew doctor
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

# Make sure we’re using the latest Homebrew.
brew update


# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install `wget` with IRI support.
brew install wget --with-iri

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install imagemagick --with-webp
brew install libpng
brew install macvim
brew install mc
brew install openssl
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install tree
brew install webkit2png
brew install zopfli
brew install htop
brew install zlib

# install nginx
brew install nginx
# install node
brew install node

# Remove outdated versions from the cellar.
brew cleanup

# rcm (https://github.com/thoughtbot/rcm#installation) (http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)
brew tap thoughtbot/formulae
brew install rcm

# copy rcfiles
rcup -v -d rc

# update bash profile
source ~/.bash_profile

# install cask
brew install caskroom/cask/brew-cask

# install soft with cask
brew cask install iterm2

# move rcfiles here


# install latest ruby
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable

# update bash profile
source ~/.bash_profile

# install sass compass
gem install sass
gem install compass

# set osx defaults
source osx/.osx
