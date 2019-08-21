class Product < ApplicationRecord
  belongs_to :store
  validates :name, :description, presence: true
  has_one_attached :image

  def image_filename
    self.image.filename.to_s if self.image.attached?
  end

  def image_attached?
    self.image.attached?
  end
end
