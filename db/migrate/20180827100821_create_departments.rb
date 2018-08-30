class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :Name
      t.string :Remark
      t.string :Active

      t.timestamps
    end
  end
end
