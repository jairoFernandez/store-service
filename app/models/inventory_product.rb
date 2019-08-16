# frozen_string_literal: true

# This model is for relation the entities Product, Inventary and keep the quantity
class InventoryProduct < ApplicationRecord
  belongs_to :product
  belongs_to :inventary
  validate :quantity
end
