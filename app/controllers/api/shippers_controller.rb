class Api::ShippersController < ApplicationController

  def index
    @shippers = Shipper.all
    render :json => @shippers
  end

end
