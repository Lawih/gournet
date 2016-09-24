class CreateTagDishes < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_dishes do |t|
      t.references :dish, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
