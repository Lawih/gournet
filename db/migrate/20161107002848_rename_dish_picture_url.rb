class RenameDishPictureUrl < ActiveRecord::Migration[5.0]
  def change
    rename_column :dish_images, :url, :picture_url
  end
end
