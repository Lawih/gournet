json.extract! dish_evaluation, :id, :user_id, :dish_id, :score_time, :score_quality, :score_visual, :comment, :created_at, :updated_at
json.url dish_evaluation_url(dish_evaluation, format: :json)