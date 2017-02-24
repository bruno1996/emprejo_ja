class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @companies = Company.all
  end
  def show
    @job = Job.find(params[:id])
  end
  def new
    @job = Job.new
    @companies =  Company.all
  end
  def create
    @companies =  Company.all
    @job = Job.new
    @job.title = params[:job][:title]
    @job.location = params[:job][:location]
    @job.category = params[:job][:category]
    @job.company_id = params[:job][:company_id]
    @job.description = params[:job][:description]
    @job.featured = params[:job][:featured]
    if  @job.save
    redirect_to @job
    else
      flash[:error] = "Não foi possível criar a vaga"
      render :new
    end
  end
end
