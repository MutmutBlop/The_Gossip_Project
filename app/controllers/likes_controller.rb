class LikesController < ApplicationController

  def show
  end

  def new
      @like = Like.new
  end

  def create
      @like = Like.create(user_id: current_user.id , gossip_id: params[:gossip_id])
      redirect_to "/"
  end

  def destroy
      @like = Like.find(params[:id])
      like_user = @like.user

      if current_user == like_user
          @like.destroy
          redirect_to "/"
      else
      end
  end

end
