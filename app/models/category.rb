class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products

  def products
    item = CategoryProduct.where
  end
end
