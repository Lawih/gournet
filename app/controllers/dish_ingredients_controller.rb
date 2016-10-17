class DishIngredientsController < ApplicationController
  before_action :set_dish_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /dish_ingredients
  # GET /dish_ingredients.json
  def index
    @dish_ingredients = DishIngredient.all
  end

  # GET /dish_ingredients/1
  # GET /dish_ingredients/1.json
  def show
  end

  # GET /dish_ingredients/new
  def new
    @dish_ingredient = DishIngredient.new
  end

  # GET /dish_ingredients/1/edit
  def edit
  end

  # POST /dish_ingredients
  # POST /dish_ingredients.json
  def create
    @dish_ingredient = DishIngredient.new(dish_ingredient_params)

    respond_to do |format|
      if @dish_ingredient.save
        format.html { redirect_to @dish_ingredient, notice: 'Dish ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @dish_ingredient }
      else
        format.html { render :new }
        format.json { render json: @dish_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_ingredients/1
  # PATCH/PUT /dish_ingredients/1.json
  def update
    respond_to do |format|
      if @dish_ingredient.update(dish_ingredient_params)
        format.html { redirect_to @dish_ingredient, notice: 'Dish ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @dish_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_ingredients/1
  # DELETE /dish_ingredients/1.json
  def destroy
    @dish_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to dish_ingredients_url, notice: 'Dish ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_ingredient
      @dish_ingredient = DishIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_ingredient_params
      params.require(:dish_ingredient).permit(:ingredient_id, :dish_id)
    end
end
