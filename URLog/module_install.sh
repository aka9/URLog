#!bin/sh

# brew install ruby
gem install  bundler -n /usr/local/bin/ && wait
bundle install --path=./vendor/bundle
bundle exec pod install
