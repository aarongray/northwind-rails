class Api::ShippersController < ApplicationController

  # GET /api/shippers
  def index
    @shippers = Shipper.all
    render :json => @shippers
  end

end
