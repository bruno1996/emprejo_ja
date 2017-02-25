class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end
  def create
    categories_params = params.require(:category).permit(:name)
    @category = Category.new
    @category.save
    redirect_to @category
  end


end
