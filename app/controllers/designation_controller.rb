class DesignationController < ApplicationController

	def index
		@designation = Designation.all
	end

	def new		
		@designation = Designation.new

	end

	def create
		@designation = Designation.new(designation_params)
		if @designation.save
			redirect_to designation_index_path
		else
			redirect_to new_designation_path
		end
	end

	def show
		@department = Department.find(params[:id])
		#binding.pry
		#if Designation.exists?(department_id: params[:id])
		@designation = Designation.where(department_id: @department.id)
		#else
		#	redirect_to new_designation_path
		#@designation = Designation.find(@designation1.ids)
		#binding.pry
		#end
	end

	def edit
		@designation = Designation.find(params[:id])
		binding.pry
	end

	def update
		@designation = Designation.find(params[:id])
		binding.pry
		@designation.update_attributes!(edit_des_params)
		redirect_to designation_index_path
	end

	def destroy
		@designation = Designation.find(params[:id])	
		@designation.destroy
		redirect_to designation_index_path
	end

	private
		def designation_params
			params.require(:designation).permit(:post,:department_id)
		end

		def edit_des_params
			params.require(:designation).permit(:post)
		end
end