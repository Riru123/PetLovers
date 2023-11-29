class ChangeDefaultMissingToPets < ActiveRecord::Migration[7.1]
  def change
    change_column_default(:pets, :missing, true)
  end
end
