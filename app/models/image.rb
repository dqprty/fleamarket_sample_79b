class Image < ApplicationRecord
  mount_uploder :src, ImageUploader
  belongs_to :product
  
end
