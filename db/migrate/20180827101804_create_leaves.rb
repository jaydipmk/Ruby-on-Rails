class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
    create_table :leaves do |t|
      t.date :Start_Date
      t.date :End_Date
      t.string :Reason

      t.timestamps
    end
  end
end
