class CreateLoginMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :login_masters do |t|
      t.string :username
      t.string :password
      t.string :role
      t.integer :active

      t.timestamps
    end
  end
end
