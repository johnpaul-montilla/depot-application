class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
    if session[:user_id] != nil
      redirect_to admin_path
    end
  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to admin_path
    else
      redirect_to login_path, alert: "Invalid user/password combination" 
    end
  end

  def destroy
    session[:user_id] = nil         
    redirect_to login_path 
  end
end
