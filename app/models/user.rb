class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  validates :username, :email, presence: true, uniqueness: true
  validates :password, :photo, presence: true
  has_many :pets
  has_many :messages
  has_many :chatrooms, through: :messages, dependent: :destroy
  # has_many :chatrooms, through: :pets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # TO BE REFACTORED #
  def has_chat_with?(pet)
    chatrooms_from_user = self.chatrooms
    chatrooms_from_pet  = pet.chatrooms
    (chatrooms_from_user & chatrooms_from_pet).count.positive?
  end

  def return_common_chat(pet)
    chatrooms_from_user = self.chatrooms
    chatrooms_from_pet  = pet.chatrooms
    (chatrooms_from_user & chatrooms_from_pet).first
  end
end
