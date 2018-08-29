class AddNameToGuitar < ActiveRecord::Migration[5.2]
  def change
    add_column :guitars, :name, :string
  end
end
