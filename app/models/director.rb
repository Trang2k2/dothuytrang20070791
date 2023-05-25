class Director < ApplicationRecord
    has_and_belongs_to_many :movies

    validates_presence_of :name

    def validate_director_name
        errors.add(:director, "must be a valid director") unless Director.exists?(name: self.name)
    end 
end
