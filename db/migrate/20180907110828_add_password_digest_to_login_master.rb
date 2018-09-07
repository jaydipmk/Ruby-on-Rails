class AddPasswordDigestToLoginMaster < ActiveRecord::Migration[5.2]
  def change
    add_column :login_masters, :password_digest, :string
  end
end
