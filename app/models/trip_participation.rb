class TripParticipation < ActiveRecord::Base
  belongs_to :trip
  belongs_to :hiker

  validates :trip, presence: true
  validates :hiker, presence: true
end
