class Image < ApplicationRecord
  belongs_to :product

  mount_uploder :src, ImageUploader
end