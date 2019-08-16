class AddInventoryToInventoryProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventory_products, :inventary, foreign_key: true
  end
end
