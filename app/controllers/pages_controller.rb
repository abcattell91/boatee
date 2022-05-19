class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boats = Boat.limit(6).order('created_at DESC');
    @bookings = Booking.limit(1).order('created_at DESC');
    @reviews = Review.limit(1)
  end
end
