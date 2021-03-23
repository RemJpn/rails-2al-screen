class Show < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :bookings
  has_one :live
  has_many :users, through: :bookings

  has_one_attached :thumbnail
  has_one_attached :wide_poster

  monetize :price_cents
end
