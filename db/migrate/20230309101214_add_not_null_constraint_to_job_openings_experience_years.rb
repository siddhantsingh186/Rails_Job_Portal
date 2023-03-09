class AddNotNullConstraintToJobOpeningsExperienceYears < ActiveRecord::Migration[7.0]
  def change
    change_column :job_openings, :experience_years, :integer, null: false
  end
end
