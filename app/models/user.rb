class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, length: {maximum: 30}
  validates :username, length: {maximum: 15}
  has_many :twitters, dependent: :destroy
end
