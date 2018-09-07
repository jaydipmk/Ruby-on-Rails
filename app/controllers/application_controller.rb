class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
  helper_method :current_user
  include LoginMasterHelper

  def current_user
    @current_user ||= LoginMaster.find(session[:user_id]) if session[:user_id]
  end

end
