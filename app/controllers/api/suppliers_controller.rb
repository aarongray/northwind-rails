class Api::SuppliersController < ApplicationController

  # GET /api/suppliers
  def index
    @suppliers = Supplier.all
    render :json => @suppliers
  end

end
