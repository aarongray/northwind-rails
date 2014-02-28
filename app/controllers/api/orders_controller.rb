class Api::OrdersController < ApplicationController

  # GET /api/orders
  def index
    @orders = Order.all
    render :json => @orders
  end

  # GET /api/orders/:id
  def show
    @order = Order.find(params[:id])
    render :json => @order
  end

end
