#!/usr/bin/env bash

# install latest ruby
curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable

# update bash profile
source ~/.bash_profile

# install sass compass
gem install sass
gem install compass
