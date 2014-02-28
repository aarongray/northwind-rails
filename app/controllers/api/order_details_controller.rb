class Api::OrderDetailsController < ApplicationController

  # GET /api/order_details
  def index
    @order_details = OrderDetail.all
    render :json => @order_details
  end

  # GET /api/order_details/:id
  def show
    @order_detail = OrderDetail.find(params[:id])
    render :json => @order_detail
  end

end
