class CreateUserGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :user_groups do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :points_total
      t.integer :games_played

      t.timestamps
    end
    add_index :user_groups, :user_id
    add_index :user_groups, :group_id
    
    add_foreign_key :user_groups, :users, column: :user_id, primary_key: :id
    add_foreign_key :user_groups, :groups, column: :group_id, primary_key: :id
  end
end
