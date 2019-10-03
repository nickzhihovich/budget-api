class Transaction < ApplicationRecord
  belongs_to :budget
  belongs_to :transactinable, dependent: :destroy, polymorphic: true

  monetize :amount_cents

  scope :balance_transactions, -> { where(transactinable_type: 'BalanceTransaction') }

  def balance_type?
    transactinable_type == 'BalanceTransaction'
  end
end
