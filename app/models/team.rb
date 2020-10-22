class Team < ActiveRecord::Base
  has_many :games, class_name: 'Game', foreign_key: 'away_id'
  has_many :games, class_name: 'Game', foreign_key: 'home_id'

  # has_many :home_matches, :foreign_key => :home_team_id, :class_name => :matches
  # has_many :away_matches, :foreign_key => :away_team_id, :class_name => :matches
  
end 