class CreateTestrs < ActiveRecord::Migration
  def change
    create_table :testrs do |t|
      t.string :name
      t.string :burp

      t.timestamps
    end
  end
end
