class ProductsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end

  def update
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_back(fallback_location: root_path)
  end

  def delete
  end
  def show

  end
  private
  def product_params
    params.require(:product).permit(:name , :price, :description, :collection_id )
  end
end
