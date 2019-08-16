class AddQuantityToInventoryProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :inventory_products, :quantity, :string
  end
end
