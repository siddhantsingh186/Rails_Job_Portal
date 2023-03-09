require "application_system_test_case"

class JobOpeningsTest < ApplicationSystemTestCase
  setup do
    @job_opening = job_openings(:one)
  end

  test "visiting the index" do
    visit job_openings_url
    assert_selector "h1", text: "Job openings"
  end

  test "should create job opening" do
    visit job_openings_url
    click_on "New job opening"

    fill_in "Company name", with: @job_opening.company_name
    fill_in "Description", with: @job_opening.description
    fill_in "Education requirements", with: @job_opening.education_requirements
    fill_in "Experience years", with: @job_opening.experience_years
    fill_in "Latitude", with: @job_opening.latitude
    fill_in "Location", with: @job_opening.location
    fill_in "Longitude", with: @job_opening.longitude
    fill_in "Salary", with: @job_opening.salary
    fill_in "Skills", with: @job_opening.skills
    fill_in "Title", with: @job_opening.title
    click_on "Create Job opening"

    assert_text "Job opening was successfully created"
    click_on "Back"
  end

  test "should update Job opening" do
    visit job_opening_url(@job_opening)
    click_on "Edit this job opening", match: :first

    fill_in "Company name", with: @job_opening.company_name
    fill_in "Description", with: @job_opening.description
    fill_in "Education requirements", with: @job_opening.education_requirements
    fill_in "Experience years", with: @job_opening.experience_years
    fill_in "Latitude", with: @job_opening.latitude
    fill_in "Location", with: @job_opening.location
    fill_in "Longitude", with: @job_opening.longitude
    fill_in "Salary", with: @job_opening.salary
    fill_in "Skills", with: @job_opening.skills
    fill_in "Title", with: @job_opening.title
    click_on "Update Job opening"

    assert_text "Job opening was successfully updated"
    click_on "Back"
  end

  test "should destroy Job opening" do
    visit job_opening_url(@job_opening)
    click_on "Destroy this job opening", match: :first

    assert_text "Job opening was successfully destroyed"
  end
end
