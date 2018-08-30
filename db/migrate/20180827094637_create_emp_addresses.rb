class CreateEmpAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_addresses do |t|
      t.string :Address
      t.string :Distict
      t.string :State
      t.string :Nation
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
