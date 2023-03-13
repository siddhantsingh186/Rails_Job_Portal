class AddEmailToJobApplication < ActiveRecord::Migration[7.0]
  def change
    add_column :job_applications, :email, :string, null: false
  end
end
