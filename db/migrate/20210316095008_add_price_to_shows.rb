class AddPriceToShows < ActiveRecord::Migration[6.0]
  def change
    add_monetize :shows, :price, currency: { present: false }
  end
end
