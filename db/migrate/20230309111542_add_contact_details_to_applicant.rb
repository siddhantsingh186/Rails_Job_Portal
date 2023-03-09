class AddContactDetailsToApplicant < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :phone, :string, null: false
  end
end
