class Team < ActiveRecord::Base
  has_many :away_games, class_name: 'Game', foreign_key: 'away_id'
  has_many :home_games, class_name: 'Game', foreign_key: 'home_id'
  has_many :venues, through: :games
  # has_many :home_matches, :foreign_key => :home_team_id, :class_name => :matches
  # has_many :away_matches, :foreign_key => :away_team_id, :class_name => :matches

  def game_count
    self.games.count
    #return the number of games associated with the team
  end
  
end 