# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  type       :string
#  user_id    :integer
#  game_id    :integer
#  score      :integer          default(0)
#  created_at :datetime
#  updated_at :datetime
#

class Thief < Player
end
