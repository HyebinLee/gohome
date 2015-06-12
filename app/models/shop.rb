class Shop < ActiveRecord::Base
  mount_uploader :image
  mount_uploader :text
end
