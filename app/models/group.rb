# == Schema Information
#
# Table name: groups
#
#  id         :bigint           not null, primary key
#  group_name :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Group < ApplicationRecord

    validates :group_name, presence: true
    
    has_many :games,
    class_name: :Game

    has_many :user_group_games
    has_many :games, through: :user_group_games
    has_many :users, through: :user_group_games

    has_many :user_groups
    has_many :users, through: :user_groups

end
