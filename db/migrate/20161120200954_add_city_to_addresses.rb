class AddCityToAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :city, :string
  end
end
