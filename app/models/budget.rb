class Budget < ApplicationRecord
  has_many :category_groups
  has_many :accounts
  has_many :monthly_budgets
  belongs_to :user

  validates :name, :user, presence: true
  validates :name, length: { maximum: 30 }

  def current_balance
    Budgets::Balance::Current.new(self).call
  end
end
