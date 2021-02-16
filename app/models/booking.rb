class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :show
  has_one :review
end
