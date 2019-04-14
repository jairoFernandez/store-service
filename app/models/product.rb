class Product < ApplicationRecord
  belongs_to :store
  validates :name, :description, presence: true
end
