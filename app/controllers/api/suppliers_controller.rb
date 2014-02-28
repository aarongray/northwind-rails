class Api::SuppliersController < ApplicationController

  # GET /api/suppliers
  def index
    @suppliers = Supplier.all
    render :json => @suppliers
  end

  # GET /api/suppliers/:id
  def show
    @supplier = Supplier.find(params[:id])
    render :json => @supplier
  end

end
