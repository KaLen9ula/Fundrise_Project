class Project < ApplicationRecord
  belongs_to :category
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
  validates :start_day, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  def first_photo_url
    photos.first.image.url
  end
end
