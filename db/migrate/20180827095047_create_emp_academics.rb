class CreateEmpAcademics < ActiveRecord::Migration[5.2]
  def change
    create_table :emp_academics do |t|
      t.string :Degree
      t.string :College_School_Name
      t.string :University_Name
      t.string :Year_Of_Passing
      t.string :Result
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
