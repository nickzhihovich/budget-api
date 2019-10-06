class Account < ApplicationRecord
  belongs_to :budget

  validates :amount_cents, :title, :kind, :budget, presence: true
end
