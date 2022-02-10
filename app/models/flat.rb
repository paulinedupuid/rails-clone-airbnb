class Flat < ApplicationRecord
  AMENITIES = ['wifi', 'television', 'car park', 'terrace', 'balcony', 'garden', 'patio', 'rooftop', 'stove', 'oven', 'kettle', 'micro-wave', 'coffee machine', 'dishwasher', 'washing machine', 'shower', 'bathtub', 'hot tub', 'bathroom towels', 'bathroom products', 'bed linen']
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :address, presence: true
  validates :availability_start, presence: true
  validates :availability_end, presence: true
  validates :number_of_guests, presence: true
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
