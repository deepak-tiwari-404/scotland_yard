# == Schema Information
#
# Table name: routes
#
#  id           :integer          not null, primary key
#  from_id      :integer
#  to_id        :integer
#  transit_mode :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Route < ActiveRecord::Base
end
