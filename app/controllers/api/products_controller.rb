class Api::ProductsController < ApplicationController

  # GET /api/products
  def index
    @products = Product.all
    render :json => @products
  end

  # GET /api/products/:id
  def show
    @product = Product.find(params[:id])
    render :json => @product
  end

end
