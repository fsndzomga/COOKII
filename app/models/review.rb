class Review < ApplicationRecord
  belongs_to :booking

  validates :content, presence: true

  validates :rating, presence: true, inclusion: { in: 1..5 }
end
