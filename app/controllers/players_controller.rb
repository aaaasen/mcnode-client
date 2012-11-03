class PlayersController < ApplicationController
  def index
    @players = Player.all

    respond_to do |format|
      format.html
      format.json { render json: @players }
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to @player, :notice => "Successfully created player."
    else
      render :action => 'new'
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    print '!!!update'
    if @player.update_attributes(params[:player])
      print '!!!success'
      render :action => 'show'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @player = Player.find(params[:id])
    @player.destroy
    redirect_to players_url, :notice => "Successfully destroyed player."
  end
end
