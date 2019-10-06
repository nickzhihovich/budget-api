class Category < ApplicationRecord
  belongs_to :category_group
  has_many :monthly_budgets

  validates :title, :category_group, presence: true
  validates :title, length: { maximum: 30 }
  validates :title, uniqueness: { scope: :category_group_id }
end
