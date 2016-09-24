class CreateDishIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.references :dish, foreign_key: true

      t.timestamps
    end
  end
end
