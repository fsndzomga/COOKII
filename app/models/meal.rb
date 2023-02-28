class Meal < ApplicationRecord
  belongs_to :user

  validates :name, :price_per_person, :max_person, presence: true
end
