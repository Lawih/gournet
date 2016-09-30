class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :username
      t.date :birthday
      t.string :phone
      t.string :picture
      t.string :type
      t.string :category
      t.text :bio

      t.timestamps
    end
  end
end
