class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index map]
  before_action :skip_authorization, only: [:map]
  before_action :set_meal, only: %i[show edit update destroy]

  def index
    if params[:query].present?
      @meals = Meal.search_in_meal(params[:query])
    else
      @meals = Meal.all
    end
  end

  def map
    @meals = Meal.all
    @meals_users = @meals.map(&:user)
    @markers = @meals_users.map do |meal_user|
      {
        lat: meal_user.geocode[0],
        lng: meal_user.geocode[1],
        info_window_html: render_to_string(partial: "info_window", locals: {meal: meal_user.meals.first})
      }
    end
  end

  def show
    @booking = Booking.new
    authorize @meal
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user = current_user
    authorize @meal
    if @meal.save
      redirect_to dashboard_path, notice: 'Meal was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @meal
  end

  def update
    authorize @meal
    if @meal.update(meal_params)
      redirect_to meal_path(@meal), notice: 'Meal was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @meal
    @meal.destroy

    redirect_to dashboard_path, status: :see_other
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :vegetarian, :category, :price_per_person, :max_person, :user, :photo)
  end
end
