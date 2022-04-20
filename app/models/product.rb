class Product < ApplicationRecord
  validates :name, presence: true
  # validates :name, uniqueness: true
  validates :price, presence: true 
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true 
  validates :description, length: { in: 10..500 }
  validates :in_stock, presence: true
  validates :in_stock, numericality: {greater_than_or_equal_to: 0}
  
  has_many :images
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products
  

  def is_discounted?
    price < 10
  end

  def tax
    0.09 * price
  end

  def total
    return (tax + price)
  end

  # def supplier 
  #   Supplier.find_by(id: supplier_id)
  # end

  def images
    Image.where(product_id: id)
  end
  
end


