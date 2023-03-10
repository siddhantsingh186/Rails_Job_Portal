class RemoveFieldsFromApplicants < ActiveRecord::Migration[7.0]
  def change
    remove_column :applicants, :name, :string
    remove_column :applicants, :phone, :string
    remove_column :applicants, :work_experience, :text
    remove_column :applicants, :education, :text
    remove_column :applicants, :resume_link, :string
    remove_column :applicants, :address_line_1, :string
    remove_column :applicants, :address_line_2, :string
    remove_column :applicants, :city, :string
  end
end
