class Api::OrderDetailsController < ApplicationController

  # GET /api/order_details
  def index
    @order_details = OrderDetail.all
    render :json => @order_details
  end

end
