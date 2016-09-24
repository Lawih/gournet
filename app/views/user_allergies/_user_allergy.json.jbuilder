json.extract! user_allergy, :id, :user_id, :allergie_id, :created_at, :updated_at
json.url user_allergy_url(user_allergy, format: :json)