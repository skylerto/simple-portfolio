class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
      @portfolios = Portfolio.where(:user_id => @user.id)
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(post_params)
      redirect_to user_path
    else
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:user).permit(:name, :about, :avatar)
  end

end
