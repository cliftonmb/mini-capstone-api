class CartedProduct < ApplicationRecord
  # belongs_to :users
  # belongs_to :products
  belongs_to :order, optional: true

  def price
    Product.find_by(id: product_id).price
  end

  
  
end
