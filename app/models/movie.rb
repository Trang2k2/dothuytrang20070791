class Movie < ApplicationRecord
    has_and_belongs_to_many :genres
    has_and_belongs_to_many :directors
    has_and_belongs_to_many :actors
    has_many :language
    has_many :ratings
    has_many :reviews
    has_one :detail

    validates :title, :duration, presence: true
    validates :title, length: { maximum: 100 }
    validates :duration, numericality: { only_integer: true, greater_than: 0 }
    validates_numericality_of :year
    validates_uniqueness_of :title
end
