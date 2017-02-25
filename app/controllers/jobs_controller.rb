class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @companies = Company.all
    @categories = Category.all
  end
  def show
    @job = Job.find(params[:id])
  end
  def new
    @job = Job.new
    @companies =  Company.all
    @categories = Category.all
  end
  def create
    @categories = Category.all
    @companies =  Company.all
    @job = Job.new(job_params)
    if  @job.save
    redirect_to @job
    else
      flash[:error] = "Não foi possível criar a vaga"
      render :new
    end
  end
  def edit
    @job = Job.find(params[:id])
    @companies = Company.all
    @categories = Category.all
  end
  def update
    @categories = Category.all
    @companies = Company.all
    @job = Job.find(params[:id])
    if @job.update(job_params)
    redirect_to @job
    else
    flash[:error] = 'Não foi possível atualizar a vaga'
    render :edit
    end
  end

private

  def job_params
  params.require(:job).permit(:title,:location,:category_id,:company_id,:description,:featured)
  end
end
