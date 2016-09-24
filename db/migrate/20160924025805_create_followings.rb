class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.references :chef, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :is_favorite

      t.timestamps
    end
  end
end
