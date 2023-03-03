class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  has_one :review

  # validates :number_of_people, comparison: { less_than_or_equal_to: :max_servings }

  # def max_servings
  #   @max = meal.max_person
  # end
end
