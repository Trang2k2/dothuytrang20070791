class Language < ApplicationRecord
  has_many :movies

  validates_presence_of :name
end
