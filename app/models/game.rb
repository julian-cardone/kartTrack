# == Schema Information
#
# Table name: games
#
#  id         :bigint           not null, primary key
#  game_name  :string
#  group_id   :integer          not null
#  game_date  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game < ApplicationRecord

    validates :game_name, length: { in: 3..25}
    validates :group_id, :game_date, presence: true

    belongs_to :group,
    class_name: :Group,
    foreign_key: :group_id

    has_many :user_group_games
    has_many :users, through: :user_group_games
    has_many :groups, through: :user_group_games

end
