class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new

  end

  def create

  end
end
