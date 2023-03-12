class AddResumeToJobApplications < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_applications, :resume_link, :string
    add_column :job_applications, :resume, :binary
  end
end
