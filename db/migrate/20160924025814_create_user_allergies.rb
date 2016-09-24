class CreateUserAllergies < ActiveRecord::Migration[5.0]
  def change
    create_table :user_allergies do |t|
      t.references :user, foreign_key: true
      t.references :allergie, foreign_key: true

      t.timestamps
    end
  end
end
