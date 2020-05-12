class User < ApplicationRecord
  belongs_to :city
  has_many :gossips
  has_secure_password
  validates :email, uniqueness: true
end
