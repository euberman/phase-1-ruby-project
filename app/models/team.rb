class Team < ActiveRecord::Base
  has_many :matchups
  has_many :games, through: :matchups

  # has_many :away_games, class_name: 'Game', foreign_key: 'away_id'
  # has_many :home_games, class_name: 'Game', foreign_key: 'home_id'
  # def initialize(**:opts)
  #   @games = []
  # end

  # def games
  #   @games
  # end
  # def add_game(game)
  #   @games << game
  # end
  # def game_count
  #   @games.count
  #   #return the number of games associated with the team
  # end
  
end 