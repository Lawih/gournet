class CreateDishIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_ingredients do |t|
      t.references :ingredient
      t.references :dish

      t.timestamps
    end
  end
end
