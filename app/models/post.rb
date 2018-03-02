class Post < ApplicationRecord
  belongs_to :pet

  mount_uploader :image, ImageUploader
end
