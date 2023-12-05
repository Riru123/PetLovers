class Pet < ApplicationRecord
  has_one_attached :photo
  include PgSearch::Model
  belongs_to :user
  has_many :chatrooms
  validates :species, :colors, :street, :city, :country, :zip_code, :photo, presence: true
  # validates =false

  scope :lost_pet, -> { where(category: "I lost") }
  scope :found_pet, -> { where(category: "I found") }
end
