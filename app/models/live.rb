class Live < ApplicationRecord
  belongs_to :show
  has_many :users, through: show
end
