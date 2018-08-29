class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.string :name
      t.integer :accessory_type_id

      t.timestamps
    end
  end
end
