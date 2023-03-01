class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, unqiue: true
      t.string :password_digest, null: false
      t.string :username, null: false, unique: true
      t.string :session_token, null: false, unique: true
      t.integer :points_total
      t.integer :games_played

      t.timestamps
    end
    add_index :users, :username
    add_index :users, :email
    add_index :users, :session_token
  end
end
