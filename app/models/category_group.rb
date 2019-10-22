class CategoryGroup < ApplicationRecord
  has_many :categories

  validates :title, presence: true
  validates :title, length: { maximum: 30 }
  validates :title, uniqueness: true
end
