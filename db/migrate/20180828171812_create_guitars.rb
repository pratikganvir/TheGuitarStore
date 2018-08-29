class CreateGuitars < ActiveRecord::Migration[5.2]
  def change
    create_table :guitars do |t|
      t.integer :brand_id
      t.integer :guitar_type
      t.integer :no_of_strings
      t.float :price
      t.string :serial_number
      t.string :guitar_image
      t.string :guitar_model
      t.date :purchase_date
      t.date :sold_date

      t.timestamps
    end
  end
end
