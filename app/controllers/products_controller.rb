class ProductsController < ApplicationController
  def index
    @products = Product.includes(:images).order('created_at DESC')
  end

  def new
    @product = Product.new
    @product.images.new
    @product.build_category
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to toppage_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private

def product_params
  params.require(:product).permit(keys: [:name, :discribe, :brand, :shipping_cost, :shipping_from, :days, :price], category_attributes:[:name], images_attributes: [:src])
end