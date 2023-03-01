class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    #   # scope.joins(bookings: :meals).where("bookings.user = user and meals.user = user")
    #   # scope.joins(bookings: [meals: :meal_id]).where(meal_id: { user: user })
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    true
  end

  def destroy?
    user == record.user
  end
end
