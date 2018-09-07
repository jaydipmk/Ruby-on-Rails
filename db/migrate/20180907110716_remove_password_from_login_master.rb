class RemovePasswordFromLoginMaster < ActiveRecord::Migration[5.2]
  def change
    remove_column :login_masters, :password, :string
  end
end
