class Trail < ActiveRecord::Base
  validates :name, presence: true
  validates :length, numericality: true,
  validates :city, presence: true
  validates :state, presence: true
  validates :postal_code, presence: true
end
