class CreateDishEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :dish_evaluations do |t|
      t.references :user, foreign_key: true
      t.references :dish, foreign_key: true
      t.integer :score_time
      t.integer :score_quality
      t.integer :score_visual
      t.text :comment

      t.timestamps
    end
  end
end
