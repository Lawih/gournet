class ChefsController < ApplicationController

  before_action :set_user, only: [:show]

  # GET /chefs
  # GET /chefs.json
  def index
    @chefs = Chef.all
  end

  # GET /chefs/1
  # GET /chefs/1.json
  def show
      @dishes = @chef.dishes
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @chef = Chef.find_by_username(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(type.underscore.to_sym).permit(:name, :lastname, :username, :birthday, :phone, :picture, :type, :category, :bio)
    end
end
