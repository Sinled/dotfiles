#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install cli tools
# xcode-select --install

# install brew
source install/.brew

#install rcm
# rcm (https://github.com/thoughtbot/rcm#installation) (http://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)
brew tap thoughtbot/formulae
brew install rcm

# copy rcfiles
rcup -v -d rc

# update bash profile
source ~/.bash_profile


#install cask
source install/.cask

#install ruby
source install/.ruby

# set osx defaults
source osx/.osx
