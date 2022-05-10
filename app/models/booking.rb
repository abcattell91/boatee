class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
end

def unavailable_dates
  bookings.pluck(:start_on, :end_on).map do |range|
    { from: range[0], to: range[1] }
  end
end
