class AddLoginMasterToLeave < ActiveRecord::Migration[5.2]
  def change
    add_reference :leaves, :login_master, foreign_key: true
  end
end
