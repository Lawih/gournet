class FavoriteDishesController < ApplicationController
  before_action :set_favorite_dish, only: [:show, :edit, :update, :destroy]

  # GET /favorite_dishes
  # GET /favorite_dishes.json
  def index
    @favorite_dishes = FavoriteDish.all
  end

  # GET /favorite_dishes/1
  # GET /favorite_dishes/1.json
  def show
  end

  # GET /favorite_dishes/new
  def new
    @favorite_dish = FavoriteDish.new
  end

  # GET /favorite_dishes/1/edit
  def edit
  end

  # POST /favorite_dishes
  # POST /favorite_dishes.json
  def create
    @favorite_dish = FavoriteDish.new(favorite_dish_params)

    respond_to do |format|
      if @favorite_dish.save
        format.html { redirect_to @favorite_dish, notice: 'Favorite dish was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_dish }
      else
        format.html { render :new }
        format.json { render json: @favorite_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_dishes/1
  # PATCH/PUT /favorite_dishes/1.json
  def update
    respond_to do |format|
      if @favorite_dish.update(favorite_dish_params)
        format.html { redirect_to @favorite_dish, notice: 'Favorite dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_dish }
      else
        format.html { render :edit }
        format.json { render json: @favorite_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_dishes/1
  # DELETE /favorite_dishes/1.json
  def destroy
    @favorite_dish.destroy
    respond_to do |format|
      format.html { redirect_to favorite_dishes_url, notice: 'Favorite dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_dish
      @favorite_dish = FavoriteDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_dish_params
      params.require(:favorite_dish).permit(:user_id, :dish_id)
    end
end
