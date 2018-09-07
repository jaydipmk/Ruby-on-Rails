class AddStatusToEmpAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :emp_addresses, :status, :integer, default: 0
  end
end
