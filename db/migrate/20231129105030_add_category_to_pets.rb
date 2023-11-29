class AddCategoryToPets < ActiveRecord::Migration[7.1]
  def change
    add_column :pets, :category, :string
  end
end
