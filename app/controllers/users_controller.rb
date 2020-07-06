class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  def create
    new_user = User.new(user_params)
    if (user_params[:password] == user_params[:password_confirmation] && new_user.save)
      session[:user_id] = new_user.id     
      redirect_to home_path(new_user)
    else
      redirect_to signup_path      
    end
  end
  
  def homepage
  end

  private
  def user_params
    params.require(:user).permit(:name,:password,:password_confirmation)
  end
end
