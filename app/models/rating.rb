class Rating < ApplicationRecord
  belongs_to :movie
  validates_numericality_of :value, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
end
