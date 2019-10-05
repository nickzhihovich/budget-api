class CategoryGroup < ApplicationRecord
  belongs_to :budget
  has_many :categories

  validates :title, :budget, presence: true
  validates :title, length: { maximum: 30 }
end
