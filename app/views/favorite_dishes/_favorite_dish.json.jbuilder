json.extract! favorite_dish, :id, :user_id, :dish_id, :created_at, :updated_at
json.url favorite_dish_url(favorite_dish, format: :json)