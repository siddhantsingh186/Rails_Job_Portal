class AddNotNullConstraintToJobOpeningsDescription < ActiveRecord::Migration[7.0]
  def change
    change_column :job_openings, :description, :text, null: false
  end
end
