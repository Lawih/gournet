class ChangePriceFormatInDishes < ActiveRecord::Migration[5.0]
  def change
    change_column :dishes, :price, :integer
  end
end
