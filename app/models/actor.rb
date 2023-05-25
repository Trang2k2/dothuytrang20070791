class Actor < ApplicationRecord
    has_and_belongs_to_many :movies

    validates_presence_of :name
    
    def validate_actor_name
        errors.add(:actor, "must be a valid actor") unless Actor.exists?(name: self.name)
    end     
end
