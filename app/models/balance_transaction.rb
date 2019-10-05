class BalanceTransaction < ApplicationRecord
  has_many :transactions, as: :transactinable, dependent: :destroy

  validates :comment, length: { maximum: 80 }
end
