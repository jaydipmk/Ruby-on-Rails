class AddStatusToSalary < ActiveRecord::Migration[5.2]
  def change
    add_column :salaries, :status, :integer, default: 0
  end
end
