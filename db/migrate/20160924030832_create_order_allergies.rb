class CreateOrderAllergies < ActiveRecord::Migration[5.0]
  def change
    create_table :order_allergies do |t|
      t.references :order, foreign_key: true
      t.references :allergie, foreign_key: true

      t.timestamps
    end
  end
end
