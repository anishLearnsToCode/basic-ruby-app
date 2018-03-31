class PlayersController < ApplicationController
  def index
    @players = Player.all
    @priority_players = number_of_priority_players(@players)
    @archived_players = @players.length - @priority_players
  end

  def number_of_priority_players(dataBase)
    count = 0
    dataBase.each do |player|
      count += 1 if !player.archived
    end
    count
  end

  def new
    @player = Player.new
  end

  def create
    new_player = Player.new(player_params)

    if new_player.save
      # redirect_to '/players'
      redirect_to root_path
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
    @current_player = Player.find(params[:id])
  end

  def update
    current_player = Player.find(params[:id])
    if current_player.update(player_params)
      redirect_to root_path
    else
      flash[:errors] = current_player.errors.full_messages
      redirect_to players_edit_path(current_player.id)
    end
  end

  def destroy
    player = Player.find(params[:id])
    player.destroy
    redirect_to '/players'
  end

  def archive
    current_player = Player.find(params[:id])
    current_player.update(archived: !current_player.archived)
    redirect_to root_path
  end

end
