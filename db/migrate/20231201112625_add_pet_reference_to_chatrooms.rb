class AddPetReferenceToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_reference :chatrooms, :pet
  end
end
