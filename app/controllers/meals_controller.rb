class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[show index]
  before_action :set_meal, only: %i[show edit update destroy]

  def index
    @meals = Meal.all
  end

  def show
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
      redirect_to meals_path, notice: 'Meal was successfully created'
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

    redirect_to root_path, status: :see_other
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :vegetarian, :category, :price_per_person, :max_person, :user)
  end
end
