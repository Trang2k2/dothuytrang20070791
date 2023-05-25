class Rating < ApplicationRecord
  belongs_to :movie
  validates_numericality_of :value
end
