class DishImage < ApplicationRecord::Base
  mount_uploader :file, ImageUploader
end
