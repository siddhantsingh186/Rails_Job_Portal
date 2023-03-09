class CreateJobOpenings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_openings do |t|
      t.string :title
      t.text :description
      t.string :company_name
      t.integer :salary
      t.string :location
      t.string :education_requirements
      t.integer :experience_years
      t.string :skills
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
