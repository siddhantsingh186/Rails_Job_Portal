class AddEducationToJobApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :job_applications, :education, :text, null: false
  end
end
