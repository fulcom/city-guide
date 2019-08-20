class AddTripNameToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :trip_name, :string
  end
end
