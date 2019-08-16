# frozen_string_literal: true

class InventoryProduct < ApplicationRecord
  belongs_to :inventary
  belongs_to :product
  validate :quantity
end
