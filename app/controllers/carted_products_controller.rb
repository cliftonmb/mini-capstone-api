class CartedProductsController < ApplicationController
  before_action :authenticate_user
  def index
    cp = CartedProduct.all
    render json: cp
  end

  def create
    cp = CartedProduct.new(
      user_id: current_user.id,
      quantity: params[:input_quantity],
      status: params[:input_status],
      product_id: params[:input_product_id],
      order_id: nil
    
    )
    cp.save
    render json: cp
  end

end


