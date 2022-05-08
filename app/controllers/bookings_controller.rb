class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]
  before_action :find_boat, only: [:new, :create]
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
    @booking.boat = @boat
    if @booking.save
      redirect_to boat_path(@boat) # guess work could be wrong, test!
    else
      render :new
    end
  end

  def create
    @booking = Booking.new
    @booking.boat = @boat
    @booking.cost = (@booking.start_date - @booking.end_date).to_i * @boat.price
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
    @user = current_user
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
    params.require(:booking).permit(:user_id, :boat_id, :cost, :start_date, :end_date, :confirmed_booking)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_boat
    @boat = Boat.find(params[:boat_id])
  end


end
