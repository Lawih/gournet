class Dish < ApplicationRecord
  belongs_to :chef
  has_many :orders
  has_many :offers
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :ingredients
  has_many :dish_evaluations
  has_and_belongs_to_many :users
end
