class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    @jobs = Job.all
  end
  def new
    @company = Company.new
  end
  def create
    @company = Company.new
    @company.name = params[:company][:name]
    @company.location = params[:company][:location]
    @company.mail = params[:company][:mail]
    @company.phone = params[:company][:phone]
    @company.save
    redirect_to @company
  end
  def show
    @company = Company.find(params[:id])
  end
end
