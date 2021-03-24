class Live < ApplicationRecord
  self.table_name = 'lives'
  belongs_to :show
end
