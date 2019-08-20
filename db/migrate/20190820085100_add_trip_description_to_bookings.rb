class AddTripDescriptionToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :trip_description, :string
  end
end
