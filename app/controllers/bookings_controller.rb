class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def new
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    if @booking.save
      redirect_to boat_path(@boat) # guess work could be wrong, test!
    else
      render :new
    end
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @booking.destroy

    redirect_to boat_path(@booking.list) # could be wrong! test first
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :boat_id, :cost, :start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
