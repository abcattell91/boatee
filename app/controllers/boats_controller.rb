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
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  def show
    @boat = Boat.new
    @booking = Booking.new
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :user_id, :price, :location, :berth, :type, :docked, :image_url)
  end

  def find_boat
    @boat = Boat.find(params[:id])
  end
end
