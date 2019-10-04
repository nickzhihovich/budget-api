class Budget < ApplicationRecord
  has_many :category_groups
  has_many :accounts
  has_many :monthly_budgets
  belongs_to :user
end
