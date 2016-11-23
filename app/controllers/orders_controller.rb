class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:requests, :new]
  after_action :verify_authorized, except: [:index, :requests]
  after_filter :verify_policy_scoped, :only => :index

  # GET /orders
  # GET /orders.json
  def index
    @orders = policy_scope(Order)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    if params[:offer_id]
      @order = Order.new(:offer => Offer.find(params[:offer_id]))
      authorize @order
    end
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    authorize @order
    respond_to do |format|
      if @order.save
        offer_callback
        format.html { redirect_to dish_path(Offer.find(order_params[:offer_id]).dish_id) }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        offer_callback
        format.html { redirect_to dish_path(Offer.find(order_params[:offer_id]).dish_id) }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Orders to my offers
  def requests
    @orders = Order.joins(offer: [dish: :chef]).where("users.id = ?", current_user.id).order(created_at: :desc)
  end

private

    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
      authorize @order
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id, :offer_id, :delivery_person_id, :amount, :date, :comment, :status)
    end

    def offer_callback
      offer = @order.offer
      offer.update(amount: (offer.amount - @order.amount ))

      Notification.create(actor: current_user, recipient: offer.dish.chef, action: "ordered", notifiable: @order)
    end
end
