class Signup < ApplicationRecord
    belongs_to :activity
    belongs_to :camper

    validates :camper_id, presence: true
    validates :activity_id, presence: true
    validates :time, inclusion: 0..23
end
