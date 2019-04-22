class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :password_digest
      t.string :remember_digest
      t.string :activation_digest
      t.boolean :activated
      t.timestamp :activated_at
      t.string :reset_digest
      t.timestamp :reset_send_at
      t.boolean :type_user

      t.timestamps
    end
  end
end
