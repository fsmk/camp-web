#!/bin/sh
git pull origin prod
bundle install
rake db:migrate RAILS_ENV="production"
RAILS_ENV=production rake assets:precompile
rails s -e production