class JobApplicationsController < ApplicationController

  before_action :authenticate_applicant! , only: [:new, :create]
  def index
    # Show all job applications belonging to a particular job id
    # Allow to use this method without authenticate_applicant!
    @job_applications = JobApplication.where(job_opening_id: params[:job_opening_id])
  end

  def show
    # Show a particular job application
    @job_application = JobApplication.find(params[:id])
  end

  def new
    @job_application = JobApplication.new
    @job_application.applicant_id = current_applicant.id
    @job_application.job_opening_id = params[:job_opening_id]
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    # use new_applicant_job_application_path(@job_application) to create a new job application post method
    respond_to do |format|
      if @job_application.save
        format.html { redirect_to job_opening_url(@job_application.job_opening), notice: "Job application was successfully created." }
        format.json { render :show, status: :created, location: @job_application }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @job_application = JobApplication.find(params[:id])
    @job_application.update_attribute(:status, "accepted")
    redirect_to job_opening_url(@job_application.job_opening), notice: "Application accepted."
  end

  def reject
    @job_application = JobApplication.find(params[:id])
    @job_application.update_attribute(:status, "rejected")
    redirect_to job_opening_url(@job_application.job_opening), notice: "Application rejected."
  end


  private
    def job_application_params
      params.require(:job_application).permit(:applicant_id, :job_opening_id, :name, :email, :phone, :resume_link, :work_experience, :education, :address_line_1, :address_line_2, :city, :state, :zip)
    end
end
