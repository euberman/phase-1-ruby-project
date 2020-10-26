require 'bundler'
Bundler.require(:default, :development) 

require_relative '../app/models/team.rb'
require_relative '../app/models/game.rb'
require_relative '../app/models/matchup.rb'
require_relative '../app/cli/cli.rb'
require_relative '../bin/run.rb'


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.sqlite3')

