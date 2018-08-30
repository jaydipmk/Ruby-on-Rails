class AddStatusToDepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :status, :string
  end
end
