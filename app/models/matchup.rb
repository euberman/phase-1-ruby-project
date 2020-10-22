class Matchup < ActiveRecord::Base
  belongs_to :season
  belongs_to :home_team, class_name: 'Team' , foreign_key: 'home_id'
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_id'
  has_and_belongs_to_many: teams

end 