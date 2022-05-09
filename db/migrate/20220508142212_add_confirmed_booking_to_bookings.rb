class AddConfirmedBookingToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :confirmed_booking, :boolean
  end
end
