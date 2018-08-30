class CreateEmpMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_masters do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Username
      t.string :Email
      t.decimal :Mobile_No
      t.string :Nationality
      t.string :Marital_Status
      t.references :login_master, foreign_key: true

      t.timestamps
    end
  end
end
