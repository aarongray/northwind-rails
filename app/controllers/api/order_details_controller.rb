class Api::OrderDetailsController < ApplicationController

  def index
    @order_details = OrderDetail.all
    render :json => @order_details
  end

end
