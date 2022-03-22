class OrdersController < ApplicationController

  def index
    orders = Order.all
    render json: orders
  end

  def create 
    product = Product.find_by(id: params[:input_product_id])
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:input_product_id],
      quantity: params[:input_quantity],
      subtotal: product.price,
      tax: product.tax,
      total: product.total
    )
    order.save
    render json: order
  end

  def show
    order = Order.find_by(id: params[:id])
    render json: order
  end

end
