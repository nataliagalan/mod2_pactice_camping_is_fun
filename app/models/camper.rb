class Camper < ApplicationRecord
    has_many :camper_activities
    has_many :activities, through: :camper_activities

    validates :name, uniqueness: true
    validates :age,  numericality: true
    validates :age,  numericality: { less_than_or_equal_to: 18 }
    validates :age,  numericality: { greater_than_or_equal_to: 8 }
end
