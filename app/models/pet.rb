class Pet < ApplicationRecord
  belongs_to :owner
  has_many :posts

  mount_uploader :image, ImageUploader
end
