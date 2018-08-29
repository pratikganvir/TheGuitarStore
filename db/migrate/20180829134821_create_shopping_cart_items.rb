class CreateShoppingCartItems < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_cart_items do |t|
      t.integer :shopping_cart_id
      t.float :price
      t.integer :quantity, default: 1
      t.integer :product_id
      t.string :product_type

      t.timestamps
    end
  end
end
