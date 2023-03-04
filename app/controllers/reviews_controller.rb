class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:booking_id])
    authorize @review
  end

  def edit
    @review = Review.find(params[:booking_id])
    authorize @review
  end

  def update
    @review = Review.find(params[:booking_id])
    authorize @review

    if @review.update(review_params)
      redirect_to @review, notice: 'Review was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    @review.booking = @booking
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    authorize @review
    if @review.save
      redirect_to bookings_path, notice: 'Review was successfully created.'
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :booking)
  end
end
