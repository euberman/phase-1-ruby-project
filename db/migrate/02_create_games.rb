class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
        t.integer :away_id
        t.string :away_team
        t.integer :away_points
        t.integer :home_id
        t.string :home_team
        t.integer :home_points
        t.integer :venue_id
        t.string :venue_name
        t.string :season
    end
  end
end