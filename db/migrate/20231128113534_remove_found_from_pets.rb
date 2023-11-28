class RemoveFoundFromPets < ActiveRecord::Migration[7.1]
  def change
    remove_column :pets, :found
  end
end
