class Api::OrdersController < ApplicationController

  # GET /api/orders
  def index
    @orders = Order.all
    render :json => @orders
  end

end
