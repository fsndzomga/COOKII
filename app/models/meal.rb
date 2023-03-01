class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :name, :price_per_person, :max_person, presence: true
end
