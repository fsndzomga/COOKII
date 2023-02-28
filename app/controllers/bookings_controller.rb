class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @meal = Meal.find(params[:meal_id])
    @booking = Booking.new
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @user = current_user # vérifier ???
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.meal = @meal
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :number_of_people, :status)
  end
end
