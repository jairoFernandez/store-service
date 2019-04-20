class Store < ApplicationRecord
  validates :name, :description, presence: true
  has_one_attached :image
  
end
