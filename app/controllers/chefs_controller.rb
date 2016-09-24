class ChefsController < ApplicationController
  before_action :set_chef, only: [:show, :edit, :update, :destroy]

  # GET /chefs
  # GET /chefs.json
  def index
    @chefs = Chef.all
  end

  # GET /chefs/1
  # GET /chefs/1.json
  def show
  end

  # GET /chefs/new
  def new
    @chef = Chef.new
  end

  # GET /chefs/1/edit
  def edit
  end

  # POST /chefs
  # POST /chefs.json
  def create
    @chef = Chef.new(chef_params)

    respond_to do |format|
      if @chef.save
        format.html { redirect_to @chef, notice: 'Chef was successfully created.' }
        format.json { render :show, status: :created, location: @chef }
      else
        format.html { render :new }
        format.json { render json: @chef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chefs/1
  # PATCH/PUT /chefs/1.json
  def update
    respond_to do |format|
      if @chef.update(chef_params)
        format.html { redirect_to @chef, notice: 'Chef was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef }
      else
        format.html { render :edit }
        format.json { render json: @chef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chefs/1
  # DELETE /chefs/1.json
  def destroy
    @chef.destroy
    respond_to do |format|
      format.html { redirect_to chefs_url, notice: 'Chef was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef
      @chef = Chef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chef_params
      params.require(:chef).permit(:user_id, :type, :bio)
    end
end
