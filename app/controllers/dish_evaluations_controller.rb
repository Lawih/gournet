class DishEvaluationsController < ApplicationController
  before_action :set_dish_evaluation, only: [:show, :edit, :update, :destroy]


  # GET /dish_evaluations
  # GET /dish_evaluations.json
  def index
    @dish_evaluations = DishEvaluation.all
  end

  # GET /dish_evaluations/1
  # GET /dish_evaluations/1.json
  def show
  end

  # GET /dish_evaluations/new
  def new
    @dish_evaluation = DishEvaluation.new
  end

  # GET /dish_evaluations/1/edit
  def edit
  end

  # POST /dish_evaluations
  # POST /dish_evaluations.json
  def create
    @dish_evaluation = DishEvaluation.new(dish_evaluation_params)

    respond_to do |format|
      if @dish_evaluation.save
        format.html { redirect_to @dish_evaluation, notice: 'Dish evaluation was successfully created.' }
        format.json { render :show, status: :created, location: @dish_evaluation }
      else
        format.html { render :new }
        format.json { render json: @dish_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_evaluations/1
  # PATCH/PUT /dish_evaluations/1.json
  def update
    respond_to do |format|
      if @dish_evaluation.update(dish_evaluation_params)
        format.html { redirect_to @dish_evaluation, notice: 'Dish evaluation was successfully updated.' }
        format.json { render :show, status: :ok, location: @dish_evaluation }
      else
        format.html { render :edit }
        format.json { render json: @dish_evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_evaluations/1
  # DELETE /dish_evaluations/1.json
  def destroy
    @dish_evaluation.destroy
    respond_to do |format|
      format.html { redirect_to dish_evaluations_url, notice: 'Dish evaluation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_evaluation
      @dish_evaluation = DishEvaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_evaluation_params
      params.require(:dish_evaluation).permit(:user_id, :dish_id, :score_time, :score_quality, :score_visual, :comment)
    end
end
