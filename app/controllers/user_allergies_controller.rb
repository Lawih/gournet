class UserAllergiesController < ApplicationController
  before_action :set_user_allergy, only: [:show, :edit, :update, :destroy]

  # GET /user_allergies
  # GET /user_allergies.json
  def index
    @user_allergies = UserAllergie.all
  end

  # GET /user_allergies/1
  # GET /user_allergies/1.json
  def show
  end

  # GET /user_allergies/new
  def new
    @user_allergy = UserAllergie.new
  end

  # GET /user_allergies/1/edit
  def edit
  end

  # POST /user_allergies
  # POST /user_allergies.json
  def create
    @user_allergy = UserAllergie.new(user_allergy_params)

    respond_to do |format|
      if @user_allergy.save
        format.html { redirect_to @user_allergy, notice: 'User allergie was successfully created.' }
        format.json { render :show, status: :created, location: @user_allergy }
      else
        format.html { render :new }
        format.json { render json: @user_allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_allergies/1
  # PATCH/PUT /user_allergies/1.json
  def update
    respond_to do |format|
      if @user_allergy.update(user_allergy_params)
        format.html { redirect_to @user_allergy, notice: 'User allergie was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_allergy }
      else
        format.html { render :edit }
        format.json { render json: @user_allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_allergies/1
  # DELETE /user_allergies/1.json
  def destroy
    @user_allergy.destroy
    respond_to do |format|
      format.html { redirect_to user_allergies_url, notice: 'User allergie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_allergy
      @user_allergy = UserAllergie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_allergy_params
      params.require(:user_allergy).permit(:user_id, :allergie_id)
    end
end
