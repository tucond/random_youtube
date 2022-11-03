#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
#bundle exec rake assets:precompile
#bundle exec rake assets:clean
bundle exec rake db:create RAILS_ENV=production
bundle exec rake db:migrate RAILS_ENV=production