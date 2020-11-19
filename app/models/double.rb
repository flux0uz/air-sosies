CATEGORIES = ['Tv', 'Cinema', 'Comedy', 'Music', 'Politics', 'Sport', 'Animals', 'Others']

class Double < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :price, :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_category,
    against: {
      name: 'A',
      description: 'B',
      category: 'C'
    },
    using: {
      tsearch: { prefix: true }
    }
end
