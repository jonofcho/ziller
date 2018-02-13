class AddCustomerNameToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :customer_name, :string
  end
end
