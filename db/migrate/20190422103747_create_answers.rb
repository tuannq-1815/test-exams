class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :question, foreign_key: true
      t.boolean :correct_answer

      t.timestamps
    end
    add_column :answers, :content, :string
  end
end
