class Budget < ApplicationRecord
  has_many :category_groups
  has_many :accounts
  belongs_to :user
end
