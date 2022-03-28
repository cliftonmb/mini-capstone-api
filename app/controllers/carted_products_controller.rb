class CartedProductsController < ApplicationController
  before_action :authenticate_user
  def index
    cp = CartedProduct.where(user_id: current_user.id, status: "carted")
    render json: cp.as_json(methods: [:product])
  end

  def create
    cp = CartedProduct.new(
      user_id: current_user.id,
      quantity: params[:input_quantity],
      status: "carted",
      product_id: params[:input_product_id],
      order_id: nil
    
    )
    cp.save
    render json: cp
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    # carted_product.delete
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "Product removed from cart"}
  end

end


