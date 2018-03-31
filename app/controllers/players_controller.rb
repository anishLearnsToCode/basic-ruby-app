class PlayersController < ApplicationController
  def index
    @players = Player.all
  end

  def new
  end

  def create
    new_player = Player.new(player_params)

    if new_player.save
      redirect_to '/players'
    else
      flash[:errors] = new_player.errors.full_messages
      redirect_to '/players/new'
    end
  end

  private def player_params
    params.require(:player).permit(:first_name, :last_name, :age, :team_id)
  end

  def show
    @current_player = Player.find(params[:id])
  end

  def edit

  end

end
