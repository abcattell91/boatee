class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_boat, only: [:show, :destroy]

  def index
    @boats = policy_scope(Boat)
    if params[:query].present?
      @boats = Boat.search_by_name_and_location(params[:query])
    else
      @boats = policy_scope(Boat)
    end
  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id = current_user
    authorize @boat
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
    params.require(:boat).permit(:name, :boat_id, :price, :location, :guests, :boat_type, :docked, :image_url)
  end

  def find_boat
    @boat = Boat.find (params[:id])
    authorize @boat
  end
end
