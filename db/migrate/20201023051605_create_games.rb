class CreateGames < ActiveRecord::Migration[5.2]

  def change
    create_table :games do |t|
      t.references :away_id
      t.string :away_team
      t.integer :away_points
      t.integer :home_id
      t.string :home_team
      t.integer :home_points
      t.integer :venue_id
      t.string :venue_name
      t.integer :season
    end
  end
end
