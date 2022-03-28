class Order < ApplicationRecord
  has_many :carted_products

  # def subtotal
  #   cart = CartedProduct.all
  #   order_sub_total = 0
  #   cart.each{|carted_product|
  #     order_sub_total += carted_product.subtotal
  #   }
  # end

  def tax
    subtotal * 0.09
  end

  def total
    tax + subtotal
  end

  def price
    Product.first.price
  end

  def carted_products
    CartedProduct.all
  end

end
