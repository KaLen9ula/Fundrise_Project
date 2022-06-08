class Project < ApplicationRecord
  belongs_to :category
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true

  def first_photo_url
    photos.first.image.url
  end
end
