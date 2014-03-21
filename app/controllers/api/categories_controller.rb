class Api::CategoriesController < ApplicationController

  # Because this is an API, we don't want to check for Rails' form auth token.
  skip_before_filter  :verify_authenticity_token

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

  # POST /api/categories
  def create
    @category = Category.create(
      category_name: params[:category_name],
      description: params[:description],
      picture: params[:picture]
    )

    head :ok
  end

  # DELETE /api/categories/:id
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    head :ok
  end

  private

  def category_params
    params.require(:category).permit(:name, :description, :picture)
  end

end
