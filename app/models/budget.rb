class Budget < ApplicationRecord
  has_many :category_groups
  belongs_to :user
end
