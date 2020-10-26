class CreateMatchups < ActiveRecord::Migration[5.2]
  def change
    create_table :matchups do |t|
      t.belongs_to :team
      t.belongs_to :game
      t.integer :team_points
      t.string :opponent_name
      t.string :opponent_points
      t.string :venue_name
    end
  end
end