class CreateUserAllergies < ActiveRecord::Migration[5.0]
  def change
    create_table :user_allergies do |t|
      t.references :user
      t.references :allergie

      t.timestamps
    end
  end
end
