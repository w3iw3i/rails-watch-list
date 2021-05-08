class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, inclusion: { in: 1..5 }, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
#   validates :rating, inclusion: { in: 1..5 }, numericality: { only_integer: true }
end
