class HomeController < ApplicationController
  def index
      @chefs = Chef.take(4);
  end
end
