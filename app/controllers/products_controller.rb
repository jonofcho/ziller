class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def update
  end

  def create
    product = Product.new
  end

  def delete
  end
  def show

  end
end
