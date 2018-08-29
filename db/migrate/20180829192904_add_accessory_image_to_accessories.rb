class AddAccessoryImageToAccessories < ActiveRecord::Migration[5.2]
  def change
    add_column :accessories, :accessory_image, :string
  end
end
