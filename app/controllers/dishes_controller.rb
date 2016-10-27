class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  after_action :verify_authorized, except: :index
  #after_action :verify_policy_scoped, only: :index


  # GET /dishes
  # GET /dishes.json
  def index

    @filterrific = initialize_filterrific(
      Dish,
      params[:filterrific],
      select_options: {
       sorted_by: Dish.options_for_sorted_by
      },
    ) or return
    @dishes = @filterrific.find.page(params[:page])

    respond_to do |format|
      format.html
      format.js
    end

    def reset_filterrific
      # Clear session persistence
      session[:filterrific_restaurants] = nil
      # Redirect back to the index action for default filter settings.
      redirect_to action: :index
    end

    if params[:chef_id]
      @dishes = Chef.find_by_username(params[:chef_id]).dishes.page(params[:page]).per_page(6)
    elsif params[:user_id]
      @dishes = Chef.find_by_username(params[:user_id]).dishes.page(params[:page]).per_page(6)
    elsif params[:search]
      @dishes = Dish.search(params[:search]).order("price DESC").page(params[:page]).per_page(6)
    end

  end

  # GET /dishes/1
  # GET /dishes/1.json
  def show
    @dish_evaluations = @dish.dish_evaluations
  end

  # GET /dishes/new
  def new
    @dish = Dish.new
    authorize @dish
  end

  # GET /dishes/1/edit
  def edit
  end

  # POST /dishes
  # POST /dishes.json
  def create
    @dish = Dish.new(dish_params)
    authorize @dish

    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: 'Dish was successfully created.' }
        format.json { render :show, status: :created, location: @dish }
      else
        format.html { render :new }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dishes/1
  # PATCH/PUT /dishes/1.json
  def update
    respond_to do |format|
      if @dish.update(dish_params)
        format.html { redirect_to @dish, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish }
      else
        format.html { render :edit }
        format.json { render json: @dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  def destroy
    @dish.destroy
    respond_to do |format|
      format.html { redirect_to dishes_url, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
      authorize @dish
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:chef_id, :name, :description, :picture, :score, :price, :calories)
    end
end
