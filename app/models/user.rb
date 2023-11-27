class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :username, :email, presence: true, uniqueness: true
  validates :password, presence: true
  has_many :pets
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end