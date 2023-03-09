class AddNotNullConstraintToJobOpeningsLocation < ActiveRecord::Migration[7.0]
  def change
    change_column :job_openings, :location, :string, null: false
  end
end
