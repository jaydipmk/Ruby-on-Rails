class EmpDetailsController < ApplicationController
	include LoginMasterHelper,SalaryHelper
	
	def index
		@emp1 = LoginMaster.find(session[:user_id])
		@emp = EmpMaster.all	
	end
	
	def new
		@emp = EmpMaster.new
		emp_address = @emp.build_emp_address
    emp_academic = @emp.build_emp_academic
		#@emp.build_emp_address
		#@empAddress = EmpAddress.new
	end

	def create
		#binding.pry
    @emp = EmpMaster.new(emp_params)
    if @emp.save
    	respond_to do |f|
    		f.html{redirect_to login_path}
    	end
    else
    	respond_to do |f|
    		f.html{ render 'new' }
    		f.js
      end
    end
  end

  def edit
  	@emp = EmpMaster.find(params[:id])
  	# @emp.reload_emp_address
   #  @emp.build_emp_academic
  end

 	def update
 		@emp = EmpMaster.find(params[:id])
 		@emp.update_attributes!(emp_params)
 		redirect_to emp_details_path
 	end

	def show	
		@emp=EmpMaster.find(params[:id])
	end

	def destroy
		@emp = EmpMaster.find(params[:id])
		@emp.destroy
		redirect_to emp_details_path
	end

 private

  def emp_params
    params.require(:emp_master).permit(:FirstName,:LastName, :Username, :Email,:Mobile_No,:Nationality,:Marital_Status, :login_master_id,emp_address_attributes:[:Address,:Distict, :State, :Nation,:emp_master_id],emp_academic_attributes:[:Degree,:College_School_Name,:University_Name,:Year_Of_Passing,:Result,:emp_master_id])
	end
end


