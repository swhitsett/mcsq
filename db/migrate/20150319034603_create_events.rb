class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :e_name
      t.string :team_1
      t.string :team_2
      t.float :team_1_odds
      t.float :team_2_odds
      t.integer :final_score
      t.string :game_end_time
      t.float :total_pot

      t.timestamps
    end
  end
end
