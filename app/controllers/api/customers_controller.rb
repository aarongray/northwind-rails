class Api::CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render :json => @customers
  end

end
