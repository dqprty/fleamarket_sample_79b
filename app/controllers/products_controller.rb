class ProductsController < ApplicationController
  
  def index
  end

  def new
    @product = Product.new
    @parents = Category.all.order("id ASC").limit(13)
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path(@product)
    else
      redirect_to new_products_path
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
  params.require(:product).permit(:name, :discribe, :brand, :status, :shipping_cost, :shipping_from, :days, :price, :category_id)
end