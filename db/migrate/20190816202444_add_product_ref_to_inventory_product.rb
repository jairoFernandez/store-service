class AddProductRefToInventoryProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :inventory_products, :product, foreign_key: true
  end
end
