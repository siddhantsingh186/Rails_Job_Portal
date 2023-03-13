class AddNotNullConstraintToJobOpeningsCompanyName < ActiveRecord::Migration[7.0]
  def change
    change_column :job_openings, :company_name, :string, null: false
  end
end
