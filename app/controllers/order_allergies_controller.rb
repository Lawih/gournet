class OrderAllergiesController < ApplicationController
  before_action :set_order_allergy, only: [:show, :edit, :update, :destroy]

  # GET /order_allergies
  # GET /order_allergies.json
  def index
    @order_allergies = OrderAllergie.all
  end

  # GET /order_allergies/1
  # GET /order_allergies/1.json
  def show
  end

  # GET /order_allergies/new
  def new
    @order_allergy = OrderAllergie.new
  end

  # GET /order_allergies/1/edit
  def edit
  end

  # POST /order_allergies
  # POST /order_allergies.json
  def create
    @order_allergy = OrderAllergie.new(order_allergy_params)

    respond_to do |format|
      if @order_allergy.save
        format.html { redirect_to @order_allergy, notice: 'Order allergie was successfully created.' }
        format.json { render :show, status: :created, location: @order_allergy }
      else
        format.html { render :new }
        format.json { render json: @order_allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_allergies/1
  # PATCH/PUT /order_allergies/1.json
  def update
    respond_to do |format|
      if @order_allergy.update(order_allergy_params)
        format.html { redirect_to @order_allergy, notice: 'Order allergie was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_allergy }
      else
        format.html { render :edit }
        format.json { render json: @order_allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_allergies/1
  # DELETE /order_allergies/1.json
  def destroy
    @order_allergy.destroy
    respond_to do |format|
      format.html { redirect_to order_allergies_url, notice: 'Order allergie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_allergy
      @order_allergy = OrderAllergie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_allergy_params
      params.require(:order_allergy).permit(:order_id, :allergie_id)
    end
end
