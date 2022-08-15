class Api::V1::CategoriesController < ApplicationController
	before_action :set_categories, only: [:show, :update, :destroy]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories, :except => [:id, :created_at, :updated_at]
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /products
  def create
    @category = Category.new(product_params)

  end

  # PATCH/PUT /products/1
  def update
    if @categories.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def categories_params
      params.require(:category).permit(:name)
    end
end
