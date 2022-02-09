class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :reservation_start, presence: true
  validates :reservation_end, presence: true, numericality: { greater_than: :reservation_start }
  validates :number_of_guests, presence: true
  # validate :end_date_is_after_start_date

  # private

  # def end_date_is_after_start_date
  #   if reservation_end < reservation_start
  #     errors.add(:reservation_end, 'cannot be before the start date')
  #   end
  # end
end
