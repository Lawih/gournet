class DishImagesController < ApplicationController
  before_action :set_dish_image, only: [:show, :edit, :update, :destroy]

  # GET /dish_images
  # GET /dish_images.json
  def index
    @dish_image = DishImage.new
    @dish_images = DishImage.all
  end

  # GET /dish_images/1
  # GET /dish_images/1.json
  def show
  end

  # GET /dish_images/new
  def new
    @dish_image = DishImage.new
  end

  # GET /dish_images/1/edit
  def edit
  end

  # POST /dish_images
  # POST /dish_images.json
  def create
    @dish_image = DishImage.new(dish_image_params)

    respond_to do |format|
      if @dish_image.save
        format.html { redirect_to @dish_image, notice: 'Dish image was successfully created.' }
        format.json { render :show, status: :created, location: @dish_image }
      else
        format.html { render :new }
        format.json { render json: @dish_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_images/1
  # PATCH/PUT /dish_images/1.json
  def update
    respond_to do |format|
      if @dish_image.update(dish_image_params)
        format.html { redirect_to @dish_image, notice: 'Dish image was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_image }
      else
        format.html { render :edit }
        format.json { render json: @dish_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_images/1
  # DELETE /dish_images/1.json
  def destroy
    @dish_image.destroy
    respond_to do |format|
      format.html { redirect_to dish_images_url, notice: 'Dish image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_image
      @dish_image = DishImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_image_params
      params.require(:dish_image).permit(:dish_id, :url)
    end
end
