class CreateLives < ActiveRecord::Migration[6.0]
  def change
    create_table :lives do |t|
      t.references :show, null: false, foreign_key: true

      t.timestamps
    end
  end
end
