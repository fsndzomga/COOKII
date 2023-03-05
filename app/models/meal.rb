class Meal < ApplicationRecord
  CATEGORIES = ["Asian", "European", "Mediterranean", "African"]
  belongs_to :user
  has_one_attached :photo
  before_save :attach_photo
  validates :name, :price_per_person, :max_person, presence: true
  validates :description, length: { maximum: 310 }
  validates :category, inclusion: { in: CATEGORIES }

  # Search Bar
  include PgSearch::Model
  pg_search_scope :search_in_meal,
  against: %i[name description category],
  using: {
    tsearch: { prefix: true }
  }
  # ***************

  def attach_photo
    return if photo.attached?

    photo.attach(io: File.open(File.join(Rails.root, 'app/assets/images/cook.jpg')), filename: 'cook')
  end
end
