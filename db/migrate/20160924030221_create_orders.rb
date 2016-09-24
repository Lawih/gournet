class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :dish, foreign_key: true
      t.references :delivery_person, foreign_key: true
      t.integer :amount
      t.timestamp :date
      t.text :comment
      t.integer :status

      t.timestamps
    end
  end
end
