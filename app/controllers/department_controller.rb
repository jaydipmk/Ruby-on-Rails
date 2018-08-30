class DepartmentController < ApplicationController
	def index
		@emp = LoginMaster.find(session[:user_id])
		@department = Department.all
	end

	def new
		@department = Department.new
	end

	def create
		@department = Department.new(department_params)
		if @department.save
			redirect_to department_index_path
		else
			redirect_to new_department_path
		end
	end

	private
		def department_params
			params.require(:department).permit(:Name,:Remark,:status)
		end
end
