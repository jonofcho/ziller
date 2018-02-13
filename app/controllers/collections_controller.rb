class CollectionsController < ApplicationController
  before_action :authenticate_admin!

  def add_product

  end

  def index
    @collections = Collection.all()
  end
  def new

  end

  def update

  end

  def edit
    @collection = Collection.find(params[:id])
    @products = Product.all
  end
  def delete
    @collection.destroy
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.save
    redirect_to collections_path
  end

  private
  def collection_params
    params.require(:collection).permit(:name)
  end
end
