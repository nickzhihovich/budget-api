class CategoryGroup < ApplicationRecord
  has_many :categories

  validates :title, :budget, presence: true
  validates :title, length: { maximum: 30 }
  validates :title, uniqueness: { scope: :budget_id }
end
