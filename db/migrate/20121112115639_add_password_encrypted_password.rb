class AddPasswordEncryptedPassword < ActiveRecord::Migration
  def up
  	add_column :users, :encrypted_password, :string
  	add_column :users, :password, :string 
  end

  def down
  	remove_column :users, :encrypted_password
  	remove_column :users, :password
  end
end
