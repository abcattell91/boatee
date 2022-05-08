class BookingsController < ApplicationController

  def index
    @booking = Booking.all
    @boat_guests = Booking.where()
    @boat_hosts = Booking.where()
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
    @booking = Booking.new(booking_params)
    @booking.user_id = @user.id
    @booking.boat_id = @boat.id
    @booking.cost = ((@booking.start_date - @booking.end_date).to_i) * @boat.price
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
  end

  def edit

  end

  def update
    new_id = @booking.boat_id
    @boat = Boat.find(new_id)
    @booking.update(booking_params)
    @booking.cost = ((@booking.start_date - @booking.end_date).to_i) * @boat.price
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy

    redirect_to boat_path(@boats) # could be wrong! test first
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :boat_id, :cost, :start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end


end
