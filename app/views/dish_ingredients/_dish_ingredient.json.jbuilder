json.extract! dish_ingredient, :id, :ingredient_id, :dish_id, :created_at, :updated_at
json.url dish_ingredient_url(dish_ingredient, format: :json)