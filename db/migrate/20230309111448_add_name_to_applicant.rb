class AddNameToApplicant < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :name, :string, null: false
  end
end
