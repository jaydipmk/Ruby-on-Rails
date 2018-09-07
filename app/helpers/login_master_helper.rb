module LoginMasterHelper
	def check_admin
		@employee = LoginMaster.find(session[:user_id])
		@Admin = @employee.role=="Admin"
	end
end
