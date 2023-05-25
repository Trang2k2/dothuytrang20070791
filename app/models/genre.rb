class Genre < ApplicationRecord
    has_and_belongs_to_many :movies

    validates_presence_of :name
    
    def validate_genre_name
        errors.add(:genre, "must be a valid genre") unless Genre.exists?(name: self.name)
    end      
      
end
