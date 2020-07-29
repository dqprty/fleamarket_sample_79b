class Image < ApplicationRecord
  mount_uploder :src, ImageUploader
 
end
