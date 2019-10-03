class CategoryGroup < ApplicationRecord
  belongs_to :budget
  has_many :categories

  monetize :amount_cents
end
