class Routine < ApplicationRecord
  has_many :exercises
  belongs_to :user
end
