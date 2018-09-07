class SalaryController < ApplicationController
	include LoginMasterHelper
	def index 
		#@salary = Salary.all
		@emp1 = LoginMaster.find(session[:user_id])
		@emp = EmpMaster.all
	end

	def new
		@salary = Salary.new
		#@s = LoginMaster.find(session[:user_id])
		#binding.pry
		#@emp = EmpMaster.where(login_master_id: @s.id)
		#binding.pry
	end

	def create
		@salary = Salary.new(salary_params)
		if @salary.save
			redirect_to salary_index_path
		else
			redirect_to new_salary_path
		end
	end

	def show
		@salary = Salary.where(emp_master_id: params[:id])
	end


	def edit
		@salary = Salary.find(params[:id])
	end

	
	def update
		@salary = Salary.find(params[:id])
		@salary.update_attributes!(salary_params)
		redirect_to salary_index_path
	end

	def destroy
		@salary = Salary.find(params[:id])
		@salary.destroy
		redirect_to salary_index_path
	end

	private
		def salary_params
			params.require(:salary).permit(:Date_Of_Salary,:Amount,:emp_master_id)
		end
end
