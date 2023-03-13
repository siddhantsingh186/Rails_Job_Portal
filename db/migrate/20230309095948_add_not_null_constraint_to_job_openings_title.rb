class AddNotNullConstraintToJobOpeningsTitle < ActiveRecord::Migration[7.0]
  def change
    change_column :job_openings, :title, :string, null: false
  end
end
