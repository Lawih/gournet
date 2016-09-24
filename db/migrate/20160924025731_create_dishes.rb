class CreateDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :dishes do |t|
      t.references :chef, foreign_key: true
      t.string :name
      t.text :description
      t.string :picture
      t.float :score
      t.float :price
      t.integer :calories

      t.timestamps
    end
  end
end
