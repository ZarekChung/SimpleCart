class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def add_products_to_cart
    @product = Product.find(params[:id])
    current_cart.add_product_items(@product)
  end
end
