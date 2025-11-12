class Restaurant < ApplicationRecord
  has_many :reviews, dependent: destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates [:name, :address, :category], presence: true
  validates :category, inclusion: { in: CATEGORIES }
  # inclusion needs to pass a collection like an arrayrspec spec/01_models
end
