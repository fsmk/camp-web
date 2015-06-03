#!/bin/sh
git pull --rebase
bundle install
rake db:migrate
rake assets:precompile
rails s