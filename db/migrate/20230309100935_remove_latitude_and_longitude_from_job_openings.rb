class RemoveLatitudeAndLongitudeFromJobOpenings < ActiveRecord::Migration[7.0]
  def change
    remove_column :job_openings, :latitude, :float
    remove_column :job_openings, :longitude, :float
  end
end
