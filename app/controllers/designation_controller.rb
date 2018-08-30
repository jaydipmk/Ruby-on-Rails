class DesignationController < ApplicationController
	def index
		@designation = Designation.all
	end

	def new		
	end

	def create
		@designation = Designation.new(designation_params)
		if @designation.save
			redirect_to designation_index_path
		else
			redirect_to new_designation_path
		end
	end

	private
		def designation_params
			params.require(:designation).require(:post)
		end
end
