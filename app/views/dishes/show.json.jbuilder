json.dish do
  json.id @dish.id
  json.chef_id @dish.chef_id
  json.chef_username @dish.chef.username
  json.name @dish.name
  json.description @dish.description
  json.score @dish.score
  json.price @dish.price
  json.calories @dish.calories
end

json.offers @dish.offer.active.each do |offer|
  json.amount offer.amount
  json.delivery_date_day l(offer.delivery_date, format: :day)
  json.delivery_date_hour l(offer.delivery_date, format: :hour)
  json.max_date_day l(offer.max_date, format: :day)
  json.max_date_hour l(offer.max_date, format: :hour)
end

json.evaluations @dish_evaluations.each do |evaluation|
  json.user_id evaluation.user.id
  json.user_username evaluation.user.username
  json.user_picture evaluation.user.picture
  json.comment evaluation.comment
  json.score_time evaluation.score_time
  json.score_quality evaluation.score_quality
  json.score_visual evaluation.score_visual
  json.created_at l(evaluation.created_at, format: :day)
end