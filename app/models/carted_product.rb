class CartedProduct < ApplicationRecord
  # belongs_to :users
  belongs_to :product
  belongs_to :order, optional: true

  def price
    Product.find_by(id: product_id).price
  end

  def product
    Product.find_by(id: product_id)
  end  
  
end
