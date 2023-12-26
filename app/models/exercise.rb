class Exercise < ApplicationRecord
  has_many :routine
  has_many :users, through: :routines
end
