class Pet < ApplicationRecord
  belongs_to :user
  validates :name, :species, :colors, :street, :city, :country, :zip_code, presence: true
  # validates =false
end
