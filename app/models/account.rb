class Account < ApplicationRecord
  validates :amount_cents, :title, :kind, presence: true

  scope :deposits, -> { where(kind: 'deposit') }
  scope :credits, -> { where(kind: 'credit') }
end
