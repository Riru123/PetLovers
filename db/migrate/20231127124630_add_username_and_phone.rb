class AddUsernameAndPhone < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string 
    add_column :users, :phone, :string
  end
end
