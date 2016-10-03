class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.references :chef
      t.references :user
      t.boolean :is_favorite

      t.timestamps
    end
  end
end
