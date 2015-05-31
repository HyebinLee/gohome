class Shop < ActiveRecord::Base
  mount_uploader :image, PictureUploader
end

