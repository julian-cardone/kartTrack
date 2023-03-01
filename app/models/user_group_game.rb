# == Schema Information
#
# Table name: user_group_games
#
#  id         :bigint           not null, primary key
#  game_id    :integer
#  user_id    :integer
#  group_id   :integer
#  points     :integer
#  character  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserGroupGame < ApplicationRecord

    belongs_to :user,
    class_name: :User,
    foreign_key: :user_id

    belongs_to :game,
    class_name: :Game,
    foreign_key: :game_id

    belongs_to :group,
    class_name: :Group,
    foreign_key: :group_id

end
