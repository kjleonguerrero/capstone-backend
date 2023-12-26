class Exercise < ApplicationRecord
  belongs_to :routine, optional: true
end
