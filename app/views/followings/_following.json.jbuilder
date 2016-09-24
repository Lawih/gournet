json.extract! following, :id, :chef_id, :user_id, :is_favorite, :created_at, :updated_at
json.url following_url(following, format: :json)