class Api::CustomersController < ApplicationController

  # GET /api/customers
  def index
    @customers = Customer.all
    render :json => @customers
  end

  # GET /api/customers/:id
  def show
    @customer = Customer.find(params[:id])
    render :json => @customer
  end

end
