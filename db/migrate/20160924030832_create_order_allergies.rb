class CreateOrderAllergies < ActiveRecord::Migration[5.0]
  def change
    create_table :order_allergies do |t|
      t.references :order
      t.references :allergie

      t.timestamps
    end
  end
end
