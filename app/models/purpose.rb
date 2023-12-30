class Purpose < ApplicationRecord
  validates :decision, :why, presence: true
end
