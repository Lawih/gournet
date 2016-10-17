json.extract! dish, :id, :chef_id, :name, :description, :picture, :score, :price, :calories, :created_at, :updated_at
json.url dish_url(dish, format: :json)