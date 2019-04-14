class Store < ApplicationRecord
  validates :name, :description, :image, presence: true
  has_one_attached :image
  
end
