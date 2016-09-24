json.extract! user, :id, :name, :lastname, :username, :birthday, :phone, :picture, :created_at, :updated_at
json.url user_url(user, format: :json)