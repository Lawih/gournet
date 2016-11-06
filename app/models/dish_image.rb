class DishImage < ApplicationRecord
  mount_uploader :url, DishImageUploader
  belongs_to :dish
end
