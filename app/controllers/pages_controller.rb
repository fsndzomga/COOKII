class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @meals = Meal.where(user: current_user)
    @bookings = Booking.joins(:meal).where(meal: { user_id: current_user })
  end
end
