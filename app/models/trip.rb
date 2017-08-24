class Trip < ActiveRecord::Base
  validates :name, presence: true
  validates :started_on, presence: true
  validates :trail, presence: true

  belongs_to :trail
  has_many :trip_participations
  has_many :hikers,
    through: :trip_participations
end
