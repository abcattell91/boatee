class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]
  before_action :find_boat, only: [:new, :create]

  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
<<<<<<< HEAD
    @review = Review.new
    authorize @booking
    authorize @review
=======
    authorize @booking
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    authorize @booking
    if @booking.end_date && @booking.start_date
      @booking.cost = (@booking.end_date - @booking.start_date).to_f * @booking.boat.price.to_f.abs
    else
      @booking.value = 0
    end
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @boat = @booking.boat
<<<<<<< HEAD
    @review = Review.new
    @booking = Booking.new
=======
>>>>>>> 476c9184ae9f6c66b1af47634a88eabacb2b82cb
  end

  def edit
    @user = current_user
    new_id = @booking.boat_id
    @boat = Boat.find(new_id)
    @booking.cost = (@booking.end_date - @booking.start_date).to_f * @boat.price.to_f.abs
  end

  def update
    new_id = @booking.boat_id
    @boat = Boat.find(new_id)
    @booking.update(booking_params)
    @booking.cost = (@booking.end_date - @booking.start_date).to_f * @boat.price.to_f.abs
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy

    redirect_to bookings_path(@bookings)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :boat_id, :cost, :start_date, :end_date, :confirmed_booking)
  end

  def find_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def find_boat
    @boat = Boat.find(params[:boat_id])
    authorize @boat
  end

end
