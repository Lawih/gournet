class Dish < ApplicationRecord
  belongs_to :chef
  has_many :orders
  has_many :offers
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :ingredients
  has_many :dish_evaluations
  #has_and_belongs_to_many :users, join_table: :favorite_dishes #ADD AL
  has_many :favorite_dishes #ADD AL
  has_many :users, through: :favorite_dishes #ADD AL

  def self.search(search)
    if search
      Dish.where('LOWER(name) LIKE ? OR LOWER(description) LIKE ?', "%#{search.downcase}%", "%#{search.downcase}%")
    else
      Dish.all
    end
  end
end
