class User < ApplicationRecord
  EMAIL_ADDRESS = /\A[^@\s]+@[^@\s]+\z/
  has_secure_password
  validates :name,  presence: true
  validates :email, format: { with: EMAIL_ADDRESS }, uniqueness: true

  has_many :ads
end
