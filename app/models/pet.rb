class Pet < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  validates :name, :species, :colors, :street, :city, :country, :zip_code, presence: true
  # validates =false

  scope :missing_pet, -> { where(missing: true) }
  scope :found_pet, -> { where(missing: false) }

  include PgSearch::Model
end
