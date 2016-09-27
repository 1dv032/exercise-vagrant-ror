#!bin/bash

echo "creating an application"
cd /vagrant
rails new myApp
cd myApp
bundle install

## Example taken from http://guides.rubyonrails.org/command_line.html#rails-generate
## should be able to get http://localhost:8080/high_scores
rails generate scaffold HighScore game:string score:integer

rake db:migrate

# Need to bind the 0.0.0.0 address for geting the outside world connected
# run as deamon
# rails s -p 8080 -b 0.0.0.0
