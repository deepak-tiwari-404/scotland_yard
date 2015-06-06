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

class Game < ActiveRecord::Base
  module Default
    NUMBER_OF_DETECTIVES = 3
    MAXIMUM_MOVES = 20
  end

  belongs_to :board
  has_one :winner, :foreign_key => "winner_id", :class_name => Player.name
  has_many :players
  has_one :thief
  has_many :detectives

  validates :board
  validates_numericality_of  :maximum_moves, :greater_than => 10, :lesser_than => 100,:only_integer => true
  validates_numericality_of  :number_of_detectives, :greater_than => 2, :lesser_than => 6,:only_integer => true
  
  before_create :populate_default_attributes

  private

  def populate_default_attributes
    self.maximum_moves ||= Default::MAXIMUM_MOVES
    self.number_of_detectives ||= Default::NUMBER_OF_DETECTIVES
  end
end
