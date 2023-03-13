class JobOpeningsController < ApplicationController
  before_action :set_job_opening, only: %i[ show edit update destroy ]

  # GET /job_openings or /job_openings.json
  def index
    @job_openings = JobOpening.all
  end

  # GET /job_openings/1 or /job_openings/1.json
  def show
  end

  # GET /job_openings/new
  def new
    @job_opening = JobOpening.new
  end

  # GET /job_openings/1/edit
  def edit
  end

  # POST /job_openings or /job_openings.json
  def create
    @job_opening = JobOpening.new(job_opening_params)

    respond_to do |format|
      if @job_opening.save
        format.html { redirect_to job_opening_url(@job_opening), notice: "Job opening was successfully created." }
        format.json { render :show, status: :created, location: @job_opening }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_opening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_openings/1 or /job_openings/1.json
  def update
    respond_to do |format|
      if @job_opening.update(job_opening_params)
        format.html { redirect_to job_opening_url(@job_opening), notice: "Job opening was successfully updated." }
        format.json { render :show, status: :ok, location: @job_opening }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_opening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_openings/1 or /job_openings/1.json
  def destroy
    @job_opening.destroy

    respond_to do |format|
      format.html { redirect_to job_openings_url, notice: "Job opening was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_opening
      @job_opening = JobOpening.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_opening_params
      params.require(:job_opening).permit(:title, :description, :company_name, :salary, :location, :education_requirements, :experience_years, :skills)
    end
end
