#!/usr/bin/env bash

echo ''
echo 'Installing ruby'
echo ''

# install latest ruby
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable

# update bash profile
# source ~/.bash_profile
# source ~/.profile
source ~/.rvm/scripts/rvm

# install sass compass
gem install sass
gem install compass
