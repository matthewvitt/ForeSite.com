class UsersController < ApplicationController
  def new
   @user = User.new
  end
# if a user succeeds in logging in he can have access throughout the sight
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/teetimes' , notice: "You are now signed up"
    else
      redirect_to '/signup'
    end
  end

  private
# user_params defined. only a certified user can make a teetime
  def user_params
    params.require(:user).permit(:name, :email, :handicap, :password, :password_confirmation)
  end
end
