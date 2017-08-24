class Hiker < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :trip_participations
  has_many :trips,
    through: :trip_participations

  EXPERIENCE_LEVELS = [
    'beginner',
    'intermediate',
    'expert'
  ]

  validates :experience_level, inclusion: {in: EXPERIENCE_LEVELS}
end
