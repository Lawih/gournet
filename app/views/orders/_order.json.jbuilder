json.extract! order, :id, :user_id, :dish_id, :delivery_person_id, :amount, :date, :comment, :status, :created_at, :updated_at
json.url order_url(order, format: :json)