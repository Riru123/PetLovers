class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.string :colors
      t.text :details
      t.boolean :missing
      t.boolean :found
      t.string :street
      t.string :city
      t.string :country
      t.string :zip_code
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
