#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install cli tools
# xcode-select --install

# install brew
source install/.brew

# install rcm
source install/.rcm

# install cask
source install/.cask

# install ruby
# source install/.ruby # Probably i dont need ruby for sass and compass only

# install npm packages
source install/.node

# install npm packages
source install/.etc

# set osx defaults
source osx/.osx

# restart system
echo 'Restarting...'
osascript -e 'tell app "loginwindow" to «event aevtrsdn»'
