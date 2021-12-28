class Flat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :address, presence: true
  validates :availability_start, presence: true
  validates :availability_end, presence: true
end
