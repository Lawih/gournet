json.extract! dish_image, :id, :dish_id, :url, :created_at, :updated_at
json.url dish_image_url(dish_image, format: :json)