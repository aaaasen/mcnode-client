class PlayersController < ApplicationController
  def index
    @players = Player.all

    respond_to do |format|
      format.html
      format.json { render json: @players }
    end
  end

  def create
    @player = Player.new(params[:player])
    if @player.save

    else

    end
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(params[:player])

    else

    end
  end
end
