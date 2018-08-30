class LeaveController < ApplicationController

	def index
		@leave = Leave.all
	end

	def new
		@emp = LoginMaster.find(session[:user_id])
		@leave = Leave.new
	end

	def create
		@leave = Leave.new(leave_params)
		
		if @leave.save
			redirect_to leave_index_path
		else
			redirect_to new_leave_path 
		end
	end

	def destroy
		
	end

	private 
		def leave_params
			params.require(:leave).permit(:Start_Date,:End_Date,:Reason)
		end
end
