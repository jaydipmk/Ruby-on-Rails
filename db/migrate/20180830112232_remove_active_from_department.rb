class RemoveActiveFromDepartment < ActiveRecord::Migration[5.2]
  def change
    remove_column :departments, :Active, :string
  end
end
