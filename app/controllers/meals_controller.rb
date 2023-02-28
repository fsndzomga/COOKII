class MealsController < ApplicationController
  before_action :set_meal, only: %i[show edit update destroy]

  def index
    @meals = Meal.all
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to meal_path(@meal), notice: 'Meal was successfully created'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      redirect_to meal_path(@meal), notice: 'Meal was successfully updated'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
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
