class AddStatusToEmpMaster < ActiveRecord::Migration[5.2]
  def change
    add_column :emp_masters, :status, :integer, default: 0
  end
end
