class Api::CategoriesController < ApplicationController

  # GET /api/categories
  def index
    @categories = Category.all
    render :json => @categories
  end

  # GET /api/categories/:id
  def show
    @category = Category.find(params[:id])
    render :json => @category
  end

end
