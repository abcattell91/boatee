class BoatsController < ApplicationController
  before_action :find_boat, only: [:show, :destroy]

  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def show
    @booking = Booking.new
    @bookings = @boat.bookings
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :user_id, :price, :location, :berth, :boat_type, :docked, :image_url)
  end

  def find_boat
    @boat = Boat.find(params[:id])
  end
end
