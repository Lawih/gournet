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

  # default for will_paginate
  self.per_page = 6

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
    when /^price_/
      # Simple sort on the name colums
      order("dishes.price #{ direction }")
    when /^score_/
      # This sorts by a student's country name, so we need to include
      # the country. We can't use JOIN since not all students might have
      # a country.
      order("dishes.score #{ direction }")
    when /^calories_/
      # This sorts by a student's country name, so we need to include
      # the country. We can't use JOIN since not all students might have
      # a country.
      order("dishes.calories #{ direction }")
    else
      raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }

  filterrific(
    default_filter_params: { sorted_by: 'score_asc' },
    available_filters: [
      :sorted_by
    ]
  )

  def self.options_for_sorted_by
  [
    ['Precio: ascendente', 'price_asc'],
    ['Precio: descendente', 'price_desc'],
    ['Puntuación: ascendente', 'score_asc'],
    ['Puntuación: descendente', 'score_desc'],
    ['Calorias: ascendente', 'calories_asc'],
    ['Calorias: descendente', 'calories_desc']
  ]
  end
end
