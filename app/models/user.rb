class User < ApplicationRecord
  has_secure_password
  has_many :routines
  validates :email, presence: true, uniqueness: true
end
