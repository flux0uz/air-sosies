CATEGORIES = ['TV', 'CINEMA', 'COMEDY', 'MUSIC', 'POLITIC', 'SPORT', 'ANIMAL', 'OTHER']

class Double < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :price, :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
