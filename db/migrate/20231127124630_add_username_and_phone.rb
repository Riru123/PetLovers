class AddUsernameAndPhone < ActiveRecord::Migration[7.1]
  def change
    add_column :user, :username, :string, :phone, :string
  end
end
