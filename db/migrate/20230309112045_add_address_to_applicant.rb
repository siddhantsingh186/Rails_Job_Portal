class AddAddressToApplicant < ActiveRecord::Migration[7.0]
  def change
    add_column :applicants, :address_line_1, :string, null: false
    add_column :applicants, :address_line_2, :string
    add_column :applicants, :city, :string, null: false
  end
end
