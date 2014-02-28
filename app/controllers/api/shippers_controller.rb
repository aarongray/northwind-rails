class Api::ShippersController < ApplicationController

  # GET /api/shippers
  def index
    @shippers = Shipper.all
    render :json => @shippers
  end

  # GET /api/shippers/:id
  def show
    @shipper = Shipper.find(params[:id])
    render :json => @shipper
  end

end
