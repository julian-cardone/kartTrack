class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :group_id, null: false
      t.datetime :game_date, null: false

      t.timestamps
    end
    add_index :games, :group_id
    add_foreign_key :games, :groups, column: :group_id, primary_key: :id
  end
end
