class ProductsController < ApplicationController

  def index
    @products = Product.all
    # render json: products.as_json(methods: [:is_discounted?, :tax, :total, :images])
    render template: "products/index"
  end

  def show
    my_id = params[:id]
    @product = Product.find_by(id: my_id)
    render template: "products/show"
  end

  def create
    product = Product.new(
      name: params[:input_name],
      price: params[:input_price],
      description: params[:input_description],
      supplier_id: params[:input_supplier_id],
      in_stock: params[:input_in_stock]
    )
    
    if product.save
      input_images = params[:input_image]
      input_images.each{|image|
        image = Image.new(url: image, product_id: product.id)
        image.save
      }
      render json: product.as_json(methods: [:is_discounted?, :tax, :total])
    else
      render json: {error: product.errors.full_messages}
    end
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:input_name] || product.name
    product.price = params[:input_price] || product.price
    product.description = params[:input_description] || product.description
    product.in_stock = params[:input_in_stock] || product.in_stock
    product.supplier_id = params[:input_supplier_id] || product.supplier_id
    image = Image.where(product_id: product.id)
    image[0][:url] = params[:input_image]
    
    image.each{|one_image|
      one_image.save
    }
    
    
    # image.each{|one_image|
    #   one_image.url
    # }
    # .url = 
    
    # params[:input_image] 
    
    if product.save
      # input_images = params[:input_image]
      # input_images.each{|image|
        
      # }
      # product.images = params[:input_image] || product.images
      render json: product.as_json(methods: [:images])
    else
      render json: {error: product.errors.full_messages}
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.delete
    render json: {message: "This product has been deleted"}
  end
end
