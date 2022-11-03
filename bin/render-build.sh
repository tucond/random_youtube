#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
$ rake db:create RAILS_ENV=production
$ rake db:migrate RAILS_ENV=production