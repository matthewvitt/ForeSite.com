class SessionsController < ApplicationController
  def new
    @user = User.new
  end

# create a user and directly login if positive
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/teetimes'
    else
      redirect_to '/login'
    end
  end
# if not redirect back to login screen
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end


  def user_params
    params.require(:user).permit(:email, :password)
  end
  # associated with the logout and will show you the login screen
end
