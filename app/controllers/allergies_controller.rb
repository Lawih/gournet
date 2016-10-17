class AllergiesController < ApplicationController
  before_action :set_allergy, only: [:show, :edit, :update, :destroy]

  # GET /allergies
  # GET /allergies.json
  def index
    @allergies = Allergie.all
  end

  # GET /allergies/1
  # GET /allergies/1.json
  def show
  end

  # GET /allergies/new
  def new
    @allergy = Allergie.new
  end

  # GET /allergies/1/edit
  def edit
  end

  # POST /allergies
  # POST /allergies.json
  def create
    @allergy = Allergie.new(allergy_params)

    respond_to do |format|
      if @allergy.save
        format.html { redirect_to @allergy, notice: 'Allergie was successfully created.' }
        format.json { render :show, status: :created, location: @allergy }
      else
        format.html { render :new }
        format.json { render json: @allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allergies/1
  # PATCH/PUT /allergies/1.json
  def update
    respond_to do |format|
      if @allergy.update(allergy_params)
        format.html { redirect_to @allergy, notice: 'Allergie was successfully updated.' }
        format.json { render :show, status: :ok, location: @allergy }
      else
        format.html { render :edit }
        format.json { render json: @allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allergies/1
  # DELETE /allergies/1.json
  def destroy
    @allergy.destroy
    respond_to do |format|
      format.html { redirect_to allergies_url, notice: 'Allergie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allergy
      @allergy = Allergie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allergy_params
      params.require(:allergy).permit(:name)
    end
end
