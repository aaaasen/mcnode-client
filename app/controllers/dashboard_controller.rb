class DashboardController < ApplicationController
  def index
    @comments = Comment.all
    @players = Player.all
  end
end
