class Restaurant < ApplicationRecord
  # has_many :reviews, dependent: :destroy
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["Chinese 🇨🇳", "Italian 🇮🇹", "Japanese 🇯🇵", "French 🇫🇷", "Belgian 🇧🇪"]
  validates :name, :address, :category, presence: true # no brackets
  validates :category, inclusion: { in: CATEGORIES }
end
