class Category < ApplicationRecord
  belongs_to :category_group
  has_many :monthly_budgets

  monetize :amount_cents
end
