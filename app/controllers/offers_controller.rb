class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  after_action :verify_authorized, except: :index

  # GET /offers
  # GET /offers.json
  def index
    if params[:chef_id]
        @offers = Chef.find_by_username(params[:chef_id]).offers
    elsif params[:user_id]
        @offers = Chef.find_by_username(params[:user_id]).offers
    else
        @offers = Offer.all
    end
  end

  # GET /offers/1
  # GET /offers/1.json
  def show
  end

  # GET /offers/new
  def new
    if params[:dish_id]
      @offer = Offer.new(:dish => Dish.find(params[:dish_id]))
      authorize @offer
    end
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.new(offer_params)
    @offer.is_active = true
    authorize @offer

    respond_to do |format|
      if @offer.save
        format.html { redirect_to dish_path(offer_params[:dish_id]) }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  # PATCH/PUT /offers/1.json
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to dish_path(offer_params[:dish_id]) }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  # DELETE /offers/1.json
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

    # Use callbacks to share common setup or constraints between actions.
    def set_offer
      @offer = Offer.find(params[:id])
      authorize @offer
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:dish_id, :amount, :delivery_date, :max_date)
    end
end
