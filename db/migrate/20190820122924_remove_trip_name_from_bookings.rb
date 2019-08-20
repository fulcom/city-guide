class RemoveTripNameFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :trip_name, :string
  end
end
