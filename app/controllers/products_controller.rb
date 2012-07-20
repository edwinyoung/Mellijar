class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to "/products/new"
    else
      render "new"
    end
  end
end
