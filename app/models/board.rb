# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  width      :integer          default(800)
#  height     :integer          default(600)
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Board < ActiveRecord::Base
  has_many :cities, dependent: :destroy
end
