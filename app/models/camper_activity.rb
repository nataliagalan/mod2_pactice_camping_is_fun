class CamperActivity < ApplicationRecord
    belongs_to :camper
    belongs_to :activity

    validates :hour,  numericality: true
    validates :hour,  numericality: { less_than_or_equal_to: 23 }
    validates :hour,  numericality: { greater_than_or_equal_to: 0 }
end