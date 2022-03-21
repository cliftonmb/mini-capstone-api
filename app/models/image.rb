class Image < ApplicationRecord
  def product
    Product.where(id: product_id)
  end

  belongs_to :product
end
