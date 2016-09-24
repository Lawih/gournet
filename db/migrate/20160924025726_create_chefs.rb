class CreateChefs < ActiveRecord::Migration[5.0]
  def change
    create_table :chefs do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.text :bio

      t.timestamps
    end
  end
end
