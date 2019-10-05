class MonthlyBudget < ApplicationRecord
  belongs_to :category
  belongs_to :budget

  monetize :amount_cents
  monetize :expenses_cents

  validates :amount_cents, :expenses_cents, :date, :category, :budget, presence: true
  validates :date, uniqueness: { scope: %i[category budget] }
end
