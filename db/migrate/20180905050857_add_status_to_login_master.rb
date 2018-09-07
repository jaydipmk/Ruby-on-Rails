class AddStatusToLoginMaster < ActiveRecord::Migration[5.2]
  def change
    add_column :login_masters, :status, :integer, default: 0
  end
end
