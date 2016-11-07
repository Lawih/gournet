class DishImage < ApplicationRecord
  mount_uploader :picture_url, DishImageUploader
  belongs_to :dish
end
