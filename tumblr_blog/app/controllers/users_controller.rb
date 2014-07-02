class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user
      flash[:notice] = "New User Created!"
      redirect_to users_path
    else
      flash[:alert] = "There was a problem."
      redirect_to new_user_path
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end
  
end

private

def user_params
  params.require(:user).permit(:username, :password, :bio)
end