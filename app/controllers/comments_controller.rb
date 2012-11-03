class CommentsController < ApplicationController
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html
      format.json { render json: @comments }
    end
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.update_attributes(:player_id => Player.where(:username => "LFA2711").first.id)
    if @comment.save
      
    else
      
    end
  end
end
