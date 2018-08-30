class EmpDetailsController < ApplicationController
	def index
		@emp = EmpMaster.all	
	end
	
	def new
		@emp = EmpMaster.new
		#@emp.build_emp_address
		#@empAddress = EmpAddress.new
	end

	def create
		#binding.pry
    @emp = EmpMaster.new(emp_params)
    if @emp.save
    	redirect_to new_emp_address_path and return
    else
      render 'new'
    end
  end

	def show
		@emp = EmpMaster.find(params[:id])
	end

 private

  def emp_params
    params.require(:emp_master).permit(:FirstName,:LastName, :Username, :Email,:Mobile_No,:Nationality,:Marital_Status, :login_master_id)
	end

end


