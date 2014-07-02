class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(username: params[:password])
  	if @user
  		if @user.password == params[:password]
  			session[:user_id] = @user.id
  			flash[:notice] = "login sucessful"
  			redirect_to root_path
  		else
  			flash[:alert] = "password does not match"
  			redirect_to login_path
  		end
  	else
  		flash[:alert] = "username does not exist."
 		redirect_to login_path
 	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:notice] = "you have been logged out."
  	redirect_to login_path
  end
end
