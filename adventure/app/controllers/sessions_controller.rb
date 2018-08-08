class SessionsController < ApplicationController

def destroy
     session.clear
    redirect_to root_path
  end
  def new
    @user = User.new

    @users = User.all
  end

  def create

    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
  end


end
end
