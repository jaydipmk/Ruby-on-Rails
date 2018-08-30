class RemoveActiveFromLoginMasters < ActiveRecord::Migration[5.2]
  def change
    remove_column :login_masters, :active, :integer
  end
end
