class Api::SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render :json => @suppliers
  end

end
