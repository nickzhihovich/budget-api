class Account < ApplicationRecord
  belongs_to :budget

  validates :amount_cents, :title, :type, :budget, presence: true
end
