class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.date :Date_Of_Salary
      t.decimal :Amount
      t.references :emp_master, foreign_key: true

      t.timestamps
    end
  end
end
