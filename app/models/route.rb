# == Schema Information
#
# Table name: routes
#
#  id         :integer          not null, primary key
#  from_id    :integer
#  to_id      :integer
#  mode       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Route < ActiveRecord::Base
  belongs_to :source, :foreign_key => 'from_id', :class_name => City.name, dependent: :destroy 
  belongs_to :destination, :foreign_key => 'to_id', :class_name => City.name, dependent: :destroy

  module Type
    TAXI = 0
    BUS = 1
    TRAM = 2
    TRAIN = 3
    BOAT = 4
  end
end
