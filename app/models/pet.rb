class Pet < ApplicationRecord
  belongs_to :owner

  mount_uploader :image, ImageUploader
end
