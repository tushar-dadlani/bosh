#!/usr/bin/env bash

set -e

source bosh/ci/tasks/utils.sh

check_param RUBY_VERSION

source /etc/profile.d/chruby.sh
chruby $RUBY_VERSION

cd bosh

print_git_state

bundle install --local

bundle exec "$COMMAND"
