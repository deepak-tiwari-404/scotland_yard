class GamesController < ApplicationController
  def new
  end

  def create
    game = Game.new
    game.board ||= Board.first
  end

  def index
  end

  def show
  end
end
