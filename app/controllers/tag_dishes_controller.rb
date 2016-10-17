class TagDishesController < ApplicationController
  before_action :set_tag_dish, only: [:show, :edit, :update, :destroy]

  # GET /tag_dishes
  # GET /tag_dishes.json
  def index
    @tag_dishes = TagDish.all
  end

  # GET /tag_dishes/1
  # GET /tag_dishes/1.json
  def show
  end

  # GET /tag_dishes/new
  def new
    @tag_dish = TagDish.new
  end

  # GET /tag_dishes/1/edit
  def edit
  end

  # POST /tag_dishes
  # POST /tag_dishes.json
  def create
    @tag_dish = TagDish.new(tag_dish_params)

    respond_to do |format|
      if @tag_dish.save
        format.html { redirect_to @tag_dish, notice: 'Tag dish was successfully created.' }
        format.json { render :show, status: :created, location: @tag_dish }
      else
        format.html { render :new }
        format.json { render json: @tag_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tag_dishes/1
  # PATCH/PUT /tag_dishes/1.json
  def update
    respond_to do |format|
      if @tag_dish.update(tag_dish_params)
        format.html { redirect_to @tag_dish, notice: 'Tag dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @tag_dish }
      else
        format.html { render :edit }
        format.json { render json: @tag_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_dishes/1
  # DELETE /tag_dishes/1.json
  def destroy
    @tag_dish.destroy
    respond_to do |format|
      format.html { redirect_to tag_dishes_url, notice: 'Tag dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag_dish
      @tag_dish = TagDish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_dish_params
      params.require(:tag_dish).permit(:dish_id, :tag_id)
    end
end
