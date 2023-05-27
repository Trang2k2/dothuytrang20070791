class Movie < ApplicationRecord
    has_and_belongs_to_many :genres, join_table: "movie_genres"
    has_and_belongs_to_many :directors, join_table: "movie_directors"
    has_and_belongs_to_many :actors,join_table: "movie_actors"
    has_many :languages
    has_many :ratings
    has_many :reviews
    has_one :detail

    validates :title, :duration, presence: true
    validates :title, length: { maximum: 100 }
    validates :duration, numericality: { only_integer: true, greater_than: 0 }
    validates_numericality_of :year, greater_than: 1900, less_than: Time.current.year
    validates_uniqueness_of :title
end
