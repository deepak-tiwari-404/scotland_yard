# == Schema Information
#
# Table name: moves
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  from_id    :integer
#  to_id      :integer
#  mode       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MoveTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
