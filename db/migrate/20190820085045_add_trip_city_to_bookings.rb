class AddTripCityToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :trip_city, :string
  end
end
