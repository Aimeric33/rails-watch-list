class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_one_attached :cover_image

  validates :name, presence: true, uniqueness: true
  validates :cover_image, presence: true
end
