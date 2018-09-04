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
	

	def edit
  	@department = Department.find(params[:id])
  end

 	def update
 		@department = Department.find(params[:id])
 		@department.update_attributes!(department_params)
 		redirect_to department_index_path
 	end

	def show
		#@emp1 = EmpMaster.where(login_master_id: params[:id])	
		@department=Department.find(params[:id])
	end

	def destroy
		@department = Department.find(params[:id])
		redirect_to department_index_path
	end

	private
		def department_params
			params.require(:department).permit(:Name,:Remark,:status)
		end
end
