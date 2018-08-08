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

def facebook
    if auth
      @user = User.find_or_create_by(uid: auth['uid']) do |u|
        u.name = auth['info']['name']
        u.email = auth['info']['email']
        u.remote_image_url = (auth['info']['image']).gsub('http://','https://')
        u.password = params[:code][0..71]
      end
      session[:user_id] = @user.id
     render 'welcome/index'
    else
      @user = User.new
      render :new
    end
  end
   private

  def auth
    request.env['omniauth.auth']
  end
end
