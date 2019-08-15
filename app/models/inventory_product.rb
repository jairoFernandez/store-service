class InventoryProduct < ApplicationRecord
    belongs_to :product
    belongs_to :inventary
    validates :quantity
end
