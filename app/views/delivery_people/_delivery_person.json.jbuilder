json.extract! delivery_person, :id, :name, :lastname, :document, :phone, :picture, :created_at, :updated_at
json.url delivery_person_url(delivery_person, format: :json)