class ReviewsController < ApplicationController
  before_action :find_booking, only: [:new, :create]

  def index
    @reviews = policy_scope(Review)
  end
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to boat_path(@booking)
    else
      render :new
    end
  end

  def show
    @review = Review.new
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
    authorize @booking
  end
end
