class AddStyleToShow < ActiveRecord::Migration[6.0]
  def change
    add_column :shows, :style, :string
  end
end
