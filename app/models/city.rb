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

	has_many :outlinks, :class_name => Route.name, :foreign_key => "from_id"
	has_many :inlinks, :class_name => Route.name, :foreign_key => "to_id"

	scope :connected_cities, lambda{|x| joins('join routes ON routes.from_id = cities.id OR routes.to_id = cities.id').where(:id => x.id)}

  def routes
  	Route.involving(self)
  end

  def connected_cities
  	City.connected_cities(self)
  end
end
