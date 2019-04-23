class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :test, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :correct
      t.integer :wrong
      t.float :score

      t.timestamps
    end
  end
end
