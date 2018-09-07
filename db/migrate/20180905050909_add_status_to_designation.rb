class AddStatusToDesignation < ActiveRecord::Migration[5.2]
  def change
    add_column :designations, :status, :integer, default: 0
  end
end
