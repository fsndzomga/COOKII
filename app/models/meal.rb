class Meal < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  before_save :attach_photo
  validates :name, :price_per_person, :max_person, presence: true

  def attach_photo
    return if photo.attached?
    self.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/cook.jpeg')), filename: 'cook')
  end

end
