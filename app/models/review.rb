class Review < ApplicationRecord
  belongs_to :movie

  validates_numericality_of :rating
  validates_presence_of :year
end
