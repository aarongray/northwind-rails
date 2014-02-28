class Api::CustomersController < ApplicationController

  # GET /api/customers
  def index
    @customers = Customer.all
    render :json => @customers
  end

end
