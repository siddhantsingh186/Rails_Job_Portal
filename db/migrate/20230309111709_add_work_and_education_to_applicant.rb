class AddWorkAndEducationToApplicant < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :work_experience, :text, null: false
    add_column :applicants, :education, :text, null: false
    add_column :applicants, :resume_link, :string, null: false
  end
end
