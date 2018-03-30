class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
  end

  def create
    new_player = Player.new
    new_player.first_name= params[:player][:first_name]
    new_player.last_name= params[:player][:last_name]
    new_player.age= params[:player][:age]
    new_player.save
  end
  
end
