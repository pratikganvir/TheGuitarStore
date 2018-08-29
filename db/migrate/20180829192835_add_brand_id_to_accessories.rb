class AddBrandIdToAccessories < ActiveRecord::Migration[5.2]
  def change
    add_column :accessories, :brand_id, :integer
  end
end
