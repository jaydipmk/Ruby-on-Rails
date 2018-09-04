class EmpAddressController < ApplicationController
	def index
		@emp = EmpAddress.all
	end
	
	def new
		@emp = EmpAddress.new
		
	end

	def create
		#binding.pry
    @emp = EmpAddress.new(emp_params)
    if @emp.save
    	redirect_to login_path
    else
      redirect_to new_emp_address_path
    end
  end

	def show
		@emp = EmpAddress.find(params[:id])
	end

 private

  def emp_params
    params.require(:emp_address).permit(:Address,:Distict, :State, :Nation,:emp_master_id)
	end
end
