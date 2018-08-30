class AddEmpMasterToLeave < ActiveRecord::Migration[5.2]
  def change
    add_reference :leaves, :emp_master, foreign_key: true
  end
end
