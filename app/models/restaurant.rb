class Restaurant < ApplicationRecord
  # has_many :reviews, dependent: :destroy
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true # no brackets
  validates :category, inclusion: { in: CATEGORIES }
end
