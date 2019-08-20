class RemoveTripDescriptionFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :trip_description, :string
  end
end
