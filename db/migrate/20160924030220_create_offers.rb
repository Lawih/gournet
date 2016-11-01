class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.references :dish, foreign_key: true
      t.integer :amount
      t.datetime :delivery_date
      t.datetime :max_date
      t.boolean :is_active

      t.timestamps
    end
  end
end
