class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
  end

  def add_to_cart
    product = Product.find(params[:id])
    @cart.add_product(product)
  end
end
