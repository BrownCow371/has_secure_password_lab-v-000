class UsersController < ApplicationController

  def new
    @user=User.new
  end

  def create
    User.create(user_params)
    redirect_to '/users/welcome'
  end

  def welcome
  end
  
private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
