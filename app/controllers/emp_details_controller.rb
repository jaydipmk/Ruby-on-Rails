class EmpDetailsController < ApplicationController
	def index
		@emp1 = LoginMaster.find(session[:user_id])
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
    	respond_to do |f|
    		f.html{redirect_to new_emp_address_path and return}
    	end
    else
    	respond_to do |f|
    		f.html{ render 'form' }
    		f.js
      end
    end
  end

  def edit
  	@emp = EmpMaster.find(params[:id])
  end

 	def update
 		@emp = EmpMaster.find(params[:id])
 		@emp.update_attributes!(emp_params)
 		redirect_to emp_details_path
 	end

	def show
		#@emp1 = EmpMaster.where(login_master_id: params[:id])	
		@emp=EmpMaster.find(params[:id])
	end

	def destroy
		binding.pry
		@emp = EmpAddress.where(emp_master_id: params[:id])
		@emp1 = EmpAddress.destroy(@emp.ids)
		redirect_to emp_details_path
	end

 private

  def emp_params
    params.require(:emp_master).permit(:FirstName,:LastName, :Username, :Email,:Mobile_No,:Nationality,:Marital_Status, :login_master_id)
	end

end


