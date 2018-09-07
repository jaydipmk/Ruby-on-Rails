class SessionsController < ApplicationController
  include SessionsHelper

	def new

	end

	def LoginCreate
    user = LoginMaster.find_by_username_and_role(params[:session][:username],params[:session][:role])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "Invalid username/password combination"
      redirect_to login_master_index_path
    else
      flash[:danger] = "Invalid username/password combination"
      #redirect_to login_path
      render 'new'
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
