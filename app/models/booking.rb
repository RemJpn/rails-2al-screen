class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :show
  has_one :review

  monetize :amount_cents
end
