require 'bundler'
Bundler.require

require_all 'lib'
require_all 'app'
require_all 'db'
require 'config/run.rb'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

