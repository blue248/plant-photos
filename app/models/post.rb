class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :text, presence: true
  validates :image, presence: true
end
