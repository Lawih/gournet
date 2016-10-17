class CreateTagDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_dishes do |t|
      t.references :dish
      t.references :tag

      t.timestamps
    end
  end
end
