class Matchup < ActiveRecord::Base
  belongs_to :game
  belongs_to :team

  #def initialize(opts)
    # @team_points = :team_points ||= 0
    # @opponent = :opponent ||= 'Need Team Name'
  # belongs_to :home_team, :class_name => :team
  # belongs_to :away_team, :class_name => :team
  # end
end 