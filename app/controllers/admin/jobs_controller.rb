class Admin::JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin
  layout "admin"
  
  def show
    @job = Job.find(params[:id])
    company_contain(@job)
  end
  
  def index
    # @jobs = Job.all
    if current_user.company?
      @jobs = current_user.jobs
    else
      @jobs = Job.all
    end
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    @job.user = current_user
    
    if @job.save
      redirect_to admin_jobs_path
    else
      render :new
    end
  end
  
  def edit
    @job = Job.find(params[:id])
    company_contain(@job)
  end
  
  def update
    @job = Job.find(params[:id])
    @job.user = current_user
    company_contain(@job)
    if @job.update(job_params)
      redirect_to admin_jobs_path
    else
      render :edit
    end
  end
  
  def destroy
    @job = Job.find(params[:id])
    company_contain(@job)
    @job.destroy
    redirect_to admin_jobs_path
  end
  
  def publish
    @job = Job.find(params[:id])
    @job.publish!
    redirect_to :back
  end
  
  def hide
    @job = Job.find(params[:id])
    @job.hide!
    redirect_to :back
  end
  
  private
  
  def job_params
    params.require(:job).permit(:title, :description, :wage_lower_bound, :wage_upper_bound, :work_ex_lower_bound, :work_ex_upper_bound, :work_city, :work_city_region, :contact_email, :is_hidden)
  end
  
  def company_contain(job)
    if current_user.company?
      if job.user != current_user
        redirect_to admin_jobs_path
      end
    end
  end
  
end
