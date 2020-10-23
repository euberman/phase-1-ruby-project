class Venue < ActiveRecord::Base
  has_many :games
  has_many :teams, through: :games

  def game_count
    self.games.count
    #return the number of games associated with the venue
  end

  def team_count
    self.teams.uniq.count
    #return the number of teams associated with the venue
  end
end 