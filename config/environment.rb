require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite3')

require_all 'lib'
require_all 'app'
require_all 'db'
require '../bin/run.rb'