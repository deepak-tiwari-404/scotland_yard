# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  x_loc      :integer          not null
#  y_loc      :integer          not null
#  board_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base
	belongs_to :board

	has_many :connected_cities, 
	         :through => Route.name,
	         :source => 
end
