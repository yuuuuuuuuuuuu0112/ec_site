class FavoritesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def show
    @user = User.find(params[:id])
    @favorites = Favorite.where(user_id: @user.id).all
  end


  def create
    @favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @favorite = current_user.favorites.find_by(post_id: @post.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end



end

