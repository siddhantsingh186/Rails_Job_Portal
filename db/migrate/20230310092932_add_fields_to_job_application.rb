class AddFieldsToJobApplication < ActiveRecord::Migration[7.0]
  def change
    add_column :job_applications, :name, :string, null: false
    add_column :job_applications, :phone, :integer, null: false
    add_column :job_applications, :work_experience, :text, null: false
    add_column :job_applications, :resume_link, :string, null: false
    add_column :job_applications, :address_line_1, :string, null: false
    add_column :job_applications, :address_line_2, :string
    add_column :job_applications, :city, :string
    add_column :job_applications, :state, :string
    add_column :job_applications, :zip, :string
  end
end
