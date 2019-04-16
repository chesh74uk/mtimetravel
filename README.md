# README

AWS Cloud9 SETUP
sudo apt-get udate
sudo apt-get upgrade
sudo apt-get install nano

MONGO
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
sudo service mongod start

RUBY
rvm install 2.5.3
rvm --default use 2.5.3

RAILS
gem install rails -v 5.2.3

GEMS
https://docs.mongodb.com/mongoid/current/tutorials/mongoid-installation/
https://github.com/rspec/rspec-rails
https://github.com/cucumber/cucumber-rails
https://github.com/thoughtbot/shoulda-matchers
https://github.com/thoughtbot/factory_bot_rails
https://github.com/rails/rails-controller-testing
https://github.com/DatabaseCleaner/database_cleaner

edit spec/rails_helper.rb with database cleaning strategy (truncate with mongo)

GIT
git init
git add * && git commit -m "msg"
git remote add origin URL
git push origin master

SEMAPHORE
https://chesh74uk.semaphoreci.com
create a folder .semaphore and add semaphore.yml to it