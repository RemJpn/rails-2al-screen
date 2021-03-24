class Live < ApplicationRecord
  self.table_name = 'lives'
  belongs_to :show
  has_many :users, through: show
end
