class RemoveTripCityFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :trip_city, :string
  end
end
