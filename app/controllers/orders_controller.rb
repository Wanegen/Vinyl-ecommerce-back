class OrdersController < ApplicationController
  before_action :set_order, only: %i[index show add_vinyl update]

  def index
    @orders = Order.all
  end

  def show
    render json: @order, include: :vinyls
  end

  def create
    @order = Order.new(order_params)
    @order.reference = generate_reference
    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def add_vinyl
    vinyl = Vinyl.find(params[:vinyl_id])
    @order.vinyls << vinyl
    if @order.save
      render json: @order, include: :vinyls, status: :ok
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id) # Assuming you have a user associated with the order
  end

  def generate_reference
    "ORD-#{SecureRandom.hex(10).upcase}"
  end
end
