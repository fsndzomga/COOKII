class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :meal
  validates :date, :number_of_persons, presence: true
  # ???? validates :date, validation qui permet au user de booker à une date QUE si cette date est libre.
end
