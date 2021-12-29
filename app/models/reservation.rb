class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :reservation_start, presence: true
  validates :reservation_end, presence: true
  validates :number_of_guests, presence: true
end
