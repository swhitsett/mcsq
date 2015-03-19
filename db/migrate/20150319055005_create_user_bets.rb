class CreateUserBets < ActiveRecord::Migration
  def change
    create_table :user_bets do |t|
      t.float :wager
      t.string :game_id
      t.string :team_name

      t.timestamps
    end
  end
end
