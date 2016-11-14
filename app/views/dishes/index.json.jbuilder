json.current_page @dishes.current_page
json.total_pages @dishes.total_pages
json.dishes @dishes do |dish|
  json.id dish.id
  json.chef_id dish.chef_id
  json.chef_username dish.chef.username
  json.name dish.name
  json.description dish.description
  json.score dish.score
  json.price dish.price
  json.calories dish.calories
end