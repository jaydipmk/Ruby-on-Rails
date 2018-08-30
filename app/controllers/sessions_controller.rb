class SessionsController < ApplicationController
  include SessionsHelper

	def new

	end

	def LoginCreate
    user = LoginMaster.find_by_username_and_password_and_role(params[:session][:username],params[:session][:password],params[:session][:role])
    if user      
      session[:user_id] = user.id
      redirect_to login_master_index_path
    else
      flash.now[:danger] = 'Invalid username/password combination'
      redirect_to login_path
    end
  end
  
  def create
      user = LoginMaster.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
      redirect_to login_master_index_path
  end


  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
