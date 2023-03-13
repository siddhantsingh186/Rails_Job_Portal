class AddNotNullConstraintToJobOpeningsSalary < ActiveRecord::Migration[7.0]
  def change
    change_column :job_openings, :salary, :integer, null: false
  end
end
