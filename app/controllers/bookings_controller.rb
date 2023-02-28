class BookingsController < ApplicationController
  def new
    @meal = Meal.find(params[:meal_id]) # pourquoi ca ne fonctionne pas ?
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @user_id = User.find(params[:current_user_id]) # vérifier ???
    @booking = Booking.new(booking_params)
    @booking.meal = @meal
    @booking.user_id = @user_id
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def updated
  # end

  private

  def booking_params
    params.require(:bookings).permit(:date, :number_of_persons)
  end
end
