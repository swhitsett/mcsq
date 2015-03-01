class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :test

      t.timestamps
    end
  end
end
