class AddFieldsToReservations < ActiveRecord::Migration[5.1]
  def change
    add_column :reservations, :email, :string
    add_column :reservations, :phone, :string
    add_column :reservations, :guest, :integer
    add_column :reservations, :date, :date
    add_column :reservations, :arriving_time, :string
    add_column :reservations, :service, :string
    add_column :reservations, :occasion, :string
    add_column :reservations, :comments, :string
  end
end
