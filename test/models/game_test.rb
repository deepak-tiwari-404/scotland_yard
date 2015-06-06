# == Schema Information
#
# Table name: games
#
#  id                   :integer          not null, primary key
#  number_of_detectives :integer
#  board_id             :integer
#  winner_id            :integer
#  maximum_moves        :integer
#  started_at           :datetime
#  finished_at          :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class GameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
