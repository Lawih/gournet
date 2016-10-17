class CreateDeliveryPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_people do |t|
      t.string :name
      t.string :lastname
      t.string :document
      t.string :phone
      t.string :picture

      t.timestamps
    end
  end
end
