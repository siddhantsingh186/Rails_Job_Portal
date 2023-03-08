class JobOpeningsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    # @job_openings = JobOpening.near(params[:location], 10) if params[:location].present?
    @job_openings = JobOpening.all
  end
    
  def show
    @job_opening = JobOpening.find(params[:id])
  end

  def new
    @job_opening = JobOpening.new
  end

  def create
    @job_opening = JobOpening.new(job_opening_params)

    if @job_opening.save
      redirect_to @job_opening
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit
    @job_opening = JobOpening.find(params[:id])
  end

  def update
    @job_opening = JobOpening.find(params[:id])

    if @job_opening.update(job_opening_params)
      redirect_to @job_opening
    else
      render :edit , status: :unprocessable_entity
    end
  end

  def destroy
    @job_opening = JobOpening.find(params[:id])
    @job_opening.destroy

    redirect_to root_path, status: :see_other
  end

  # def approve
  #   @applicant = Applicant.find(params[:id])
  #   @applicant.update(status: 'approved')

  #   redirect_to job_opening_path(@applicant.job_opening)
  # end

  # def reject
  #   @applicant = Applicant.find(params[:id])
  #   @applicant.update(status: 'rejected')

  #   redirect_to job_opening_path(@applicant.job_opening)
  # end

  private

  def job_opening_params
    params.require(:job_opening).permit(:title, :description, :latitude, :longitude)
  end

  def authenticate_admin!
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == 'password'
    end
  end
end
