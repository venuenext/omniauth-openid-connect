#!/bin/bash
set -euo pipefail
bundle install
bundle exec rake build
echo ":rubygems_api_key: Basic ${ARTIFACTORY_AUTH}" > ~/.gemrc
gem push pkg/*.gem
