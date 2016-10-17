class HomeController < ApplicationController
  def index
      @chefs = Chef.take(4);
      @dishes = Dish.take(2);
  end
end
