class Game < ActiveRecord::Base
  belongs_to :season
  belongs_to :home, class_name: 'Team'
  belongs_to :away, class_name: 'Team'

  # belongs_to :home_team, :class_name => :team
  # belongs_to :away_team, :class_name => :team

end 