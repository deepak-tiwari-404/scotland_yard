class GamesController < ApplicationController
  def new
  end

  def create
    game = Game.new
    game.board ||= Board.first
    game.save!
  end

  def index
  end

  def show
  end
end
