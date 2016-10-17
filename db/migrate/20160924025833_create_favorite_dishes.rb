class CreateFavoriteDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_dishes do |t|
      t.references :user
      t.references :dish

      t.timestamps
    end
  end
end
