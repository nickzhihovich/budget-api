class Transaction < ApplicationRecord
  belongs_to :transactinable, dependent: :destroy, polymorphic: true

  monetize :amount_cents

  scope :balance_transactions, -> { where(transactinable_type: 'BalanceTransaction') }

  def balance_type?
    transactinable_type == 'BalanceTransaction'
  end

  validates :amount_cents, :date, :transactinable_type, :transactinable_id, presence: true
  validates :transactinable_id, uniqueness: { scope: :transactinable_type }
end
