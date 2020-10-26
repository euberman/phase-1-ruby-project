class Game < ActiveRecord::Base
  has_many :matchups
  has_many :teams, through: :matchups

  # belongs_to :venue
  # belongs_to :home_team, class_name: 'Team', foreign_key: 'home_id'
  # belongs_to :away_team, class_name: 'Team', foreign_key: 'away_id'
  # has_many :matchups

  # t.integer :away_id
  # t.string :away_team
  # t.integer :away_points
  # t.integer :home_id
  # t.string :home_team
  # t.integer :home_points
  # t.integer :venue_id
  # t.string :venue_name
  # t.integer :season
end 