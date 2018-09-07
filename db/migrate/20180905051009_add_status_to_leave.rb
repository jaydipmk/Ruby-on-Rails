class AddStatusToLeave < ActiveRecord::Migration[5.2]
  def change
    add_column :leaves, :status, :integer, default: 0
  end
end
