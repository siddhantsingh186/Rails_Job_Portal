require "test_helper"

class JobOpeningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_opening = job_openings(:one)
  end

  test "should get index" do
    get job_openings_url
    assert_response :success
  end

  test "should get new" do
    get new_job_opening_url
    assert_response :success
  end

  test "should create job_opening" do
    assert_difference("JobOpening.count") do
      post job_openings_url, params: { job_opening: { company_name: @job_opening.company_name, description: @job_opening.description, education_requirements: @job_opening.education_requirements, experience_years: @job_opening.experience_years, latitude: @job_opening.latitude, location: @job_opening.location, longitude: @job_opening.longitude, salary: @job_opening.salary, skills: @job_opening.skills, title: @job_opening.title } }
    end

    assert_redirected_to job_opening_url(JobOpening.last)
  end

  test "should show job_opening" do
    get job_opening_url(@job_opening)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_opening_url(@job_opening)
    assert_response :success
  end

  test "should update job_opening" do
    patch job_opening_url(@job_opening), params: { job_opening: { company_name: @job_opening.company_name, description: @job_opening.description, education_requirements: @job_opening.education_requirements, experience_years: @job_opening.experience_years, latitude: @job_opening.latitude, location: @job_opening.location, longitude: @job_opening.longitude, salary: @job_opening.salary, skills: @job_opening.skills, title: @job_opening.title } }
    assert_redirected_to job_opening_url(@job_opening)
  end

  test "should destroy job_opening" do
    assert_difference("JobOpening.count", -1) do
      delete job_opening_url(@job_opening)
    end

    assert_redirected_to job_openings_url
  end
end
