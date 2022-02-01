class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :number_of_guests, presence: true
end
