class Trail < ActiveRecord::Base
  validates :name, presence: true
  validates :length, numericality: { greater_than: 0 }
  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true

  has_many :trips
end
