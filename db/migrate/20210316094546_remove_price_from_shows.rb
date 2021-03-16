class RemovePriceFromShows < ActiveRecord::Migration[6.0]
  def change
    remove_column :shows, :price
  end
end
