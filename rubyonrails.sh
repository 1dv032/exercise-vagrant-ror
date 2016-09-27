#!/bin/bash

# add the rvm (Ruby Version Manager)
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable

source $HOME/.rvm/scripts/rvm

# Install ruby version as args from vagrant file
rvm use --default --install $1

shift

if (( $# ))
  then gem install $@
fi

rvm cleanup all

echo "Installing Rails 4.2"
gem install rails -v 4.2.6
