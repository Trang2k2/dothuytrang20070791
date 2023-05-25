class Detail < ApplicationRecord
  belongs_to :movie
  has_one_attached :poster
  has_one_attached :trailers
  has_one_attached :video
end
