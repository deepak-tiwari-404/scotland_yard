# == Schema Information
#
# Table name: games
#
#  id                   :integer          not null, primary key
#  number_of_detectives :integer
#  started_at           :datetime
#  finished_at          :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Game < ActiveRecord::Base
end
