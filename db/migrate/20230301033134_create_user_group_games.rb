class CreateUserGroupGames < ActiveRecord::Migration[7.0]
  def change
    create_table :user_group_games do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :group_id
      t.integer :points
      t.string :character

      t.timestamps
    end
    add_index :user_group_games, :game_id
    add_index :user_group_games, :user_id
    add_index :user_group_games, :group_id

    add_foreign_key :user_group_games, :games, column: :game_id, primary_key: :id
    add_foreign_key :user_group_games, :users, column: :user_id, primary_key: :id
    add_foreign_key :user_group_games, :groups, column: :group_id, primary_key: :id
  end
end
