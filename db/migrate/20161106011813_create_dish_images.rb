class CreateDishImages < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_images do |t|
      t.integer :dish_id
      t.string :url

      t.timestamps
    end
  end
end
