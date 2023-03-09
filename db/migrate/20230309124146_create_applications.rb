class CreateApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :applications do |t|
      t.references :job_opening, null: false, foreign_key: true
      t.references :applicant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
