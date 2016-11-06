class DishImage < ApplicationRecord::Base
  mount_uploader :photo, PhotoUploader
  belongs_to :dish
end
