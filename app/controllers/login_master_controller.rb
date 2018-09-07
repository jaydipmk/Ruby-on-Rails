class LoginMasterController < ApplicationController

	def index
		@emp = LoginMaster.find(session[:user_id])
	end

	def new
		@emp = LoginMaster.new	
	end

	def create
		@emp = LoginMaster.new(emp_params)
		if @emp.save
			redirect_to new_emp_detail_path and return
			#redirect_to login_master_index_path
		else
			#redirect_to new_login_master_path
			render 'new'
		end
	end

	private
		def emp_params
			params.require(:login_master).permit(:username,:password,:password_confirmation,:role)
		end

end
