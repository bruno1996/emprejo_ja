class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @jobs = Job.all
    @companies = Company.all
  end
  def new
    @category = Category.new
    @jobs = Job.all
    @companies = Company.all
  end
  def create
    @jobs = Job.all
    categories_params = params.require(:category).permit(:name)
    @category = Category.new
    @category.save
    redirect_to @category
  end
  def show
    @jobs = Job.all
    @category = Category.find(params[:id])
  end


end
