class Categories < Grape::API

  # Add versioning with 1 line of code. It changes routes to: api/v1/categories
  # version 'v1', using: :path

  resource 'categories' do

    # GET api/categories
    desc "Return all the categories"
    get do
      Category.all
    end

    # POST api/categories
    desc "Create a category"
    params do
      optional :category_name, type: String
      optional :description, type: String
      optional :picture, type: String
    end
    post do
      Category.create({
        category_name: params[:category_name],
        description: params[:description],
        picture: params[:picture]
      })
    end

    # DELETE api/categories/:id
    desc "Delete a category"
    delete ":id" do
      Category.destroy(params[:id])
    end
  end
end
