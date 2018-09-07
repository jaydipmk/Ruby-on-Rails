module SalaryHelper
	def empty
		Salary.where(emp_master_id: params[:id]).empty?
	end
end
