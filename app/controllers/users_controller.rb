class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show,:edit]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @house_makers = HouseMaker.all
    if @user != current_user
      redirect_to users_path, alert: "不正なアクセスです"
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "更新に成功しました"
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username,:eimal,:profile,:profile_image,:have_house,:maker_name)
  end
end
