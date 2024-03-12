class Home < ApplicationRecord
  has_many :comments, dependent: :destroy

  has_many :comments
  has_many_attached :music
    has_one_attached :image
    has_many_attached :images
  has_one_attached :video
  has_one_attached :photo
end
