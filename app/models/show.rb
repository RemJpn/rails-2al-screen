class Show < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :bookings
  has_many :reviews, through: :bookings
end
