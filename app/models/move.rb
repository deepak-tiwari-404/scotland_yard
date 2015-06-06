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

class Move < ActiveRecord::Base
  belongs_to :player, dependent: :destroy
  belongs_to :source, :foreign_key => 'from_id', :class_name => City.name
  belongs_to :destination, :foreign_key => 'to_id', :class_name => City.name
end
