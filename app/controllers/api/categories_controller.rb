class Api::CategoriesController < ApplicationController

  # GET /api/categories
  def index
    @categories = Category.all
    render :json => @categories
  end

end
