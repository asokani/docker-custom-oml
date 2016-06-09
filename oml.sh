#!/bin/bash
export PATH=/usr/local/rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin
export RAILS_ENV=production
cd /var/app/current
exec chpst -uwww-user bundle exec rake jobs:work
