class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :away_id
      t.integer :home_id
      t.integer :venue_id
      t.integer :season
    end
  end
end
