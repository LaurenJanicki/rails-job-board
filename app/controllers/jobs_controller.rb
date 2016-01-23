class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render :index
  end

  def new
    @job = Job.new
    render :new
  end

  def create
    Job.create(job_params)
    # or
    # @job.new(job_params)
    # @job.save
    redirect_to jobs_path
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end

end
