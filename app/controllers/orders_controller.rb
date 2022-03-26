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
    user_carted_products = CartedProduct.where(status: "carted")
    subtotal = 0
    user_carted_products.each{|carted_product|
      subtotal += carted_product.price 
      # carted_product.status = "purchased"
      # carted_product.order_id = order.id
    }
    # order = Order.new(
    #   user_id: current_user.id,
    #   subtotal: subtotal,
    #   tax: subtotal * 0.09,
    #   total: subtotal + :tax
    # )
    # order.save

    render json: subtotal

  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

end

# * Create a new order with user_id, subtotal, tax, and total (this will require a loop to calculate)
# * Modify the carted products to change the status to “purchased” and the order_id to the new order’s id


