class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :validate_search_key, only: [:search]
  
  def index
    
    if @query_string.present?
      search_result = Job.ransack(@search_criteria).result(:distinct => true)
    else
      search_result = Job.ransack("").result(:distinct => true)
    end
    @jobs = search_result.paginate(:page => params[:page], :per_page => 9 )
    # @jobs = case params[:order]
    #         when "by_lower_bound"
    #           Job.published.order("wage_lower_bound DESC")
    #         when "by_upper_bound"
    #           Job.published.order("wage_upper_bound DESC")
    #         else
    #           Job.published.recent
    #         end
  end
  
  def show
    @job = Job.find(params[:id])
    
    if @job.is_hidden
      flash[:warning] = "This job has archieved!"
      redirect_to root_path
    end
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end
  
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path
    else
      render :edit
    end
  end
  
  def destroy
    @job = Job.find(params[:id])
    
    @job.destroy
    redirect_to jobs_path
  end
  
  def search
    if @query_string.present? || @working_city.present? || @working_category.present?
      search_result = Job.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.paginate(:page => params[:page], :per_page => 9 )
    end
  end


  protected

  def validate_search_key
    
    @working_city = params[:city].gsub(/\\|\'|\/|\?|？|。|，|‘/, "") if params[:city].present?
    @working_category = params[:category].gsub(/\\|\'|\/|\?|？|。|，|‘/, "") if params[:category].present?
    @query_string = params[:q].gsub(/\\|\'|\/|\?|？|。|，|‘/, "") if params[:q].present?
    
    @search_criteria = search_criteria()
  end


  def search_criteria()
    # { :title_cont => @query_string ,
    #   :work_city_cont => @working_city,
    #   :category1_or_category2_cont => @working_category}
    {:work_city_eq => @working_city}
  end
  
  private
  
  def job_params
    params.require(:job).permit(:title, :description, :wage_upper_bound, :wage_lower_bound, :contact_email, :is_hidden)
  end
end
