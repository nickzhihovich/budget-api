class MonthlyBudget < ApplicationRecord
  belongs_to :category

  monetize :amount_cents
  monetize :expenses_cents

  validates :amount_cents, :expenses_cents, :date, :category, :budget, presence: true
  validates :category, uniqueness: { scope: %i[date] }
end
