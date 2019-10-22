class Account < ApplicationRecord
  validates :amount_cents, :title, :kind, :budget, presence: true

  scope :deposits, -> { where(kind: 'deposit') }
  scope :credits, -> { where(kind: 'credit') }
end
