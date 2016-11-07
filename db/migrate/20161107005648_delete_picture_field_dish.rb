class DeletePictureFieldDish < ActiveRecord::Migration[5.0]
  def change
    remove_column :dishes, :picture
  end
end
