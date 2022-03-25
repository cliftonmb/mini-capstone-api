class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    if current_user 
      render json: Order.all
    else
      render json: {}, status: :unauthorized
    end

  end

  def create 
    HERE I AM. CHECK OUT THE CART AND ORDER METHODS
    order = Order.new(
      user_id: current_user.id,
      subtotal: cart.subtotal,
      tax: cart.tax,
      total: cart.total
    )
    order.save
    render json: order
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

end

# Authorization
# process of seeing if 