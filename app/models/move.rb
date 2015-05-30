# == Schema Information
#
# Table name: moves
#
#  id           :integer          not null, primary key
#  player_id    :integer
#  from_id      :integer
#  to_id        :integer
#  transit_mode :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Move < ActiveRecord::Base
end
