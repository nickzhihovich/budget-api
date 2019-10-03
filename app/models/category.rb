class Category < ApplicationRecord
  belongs_to :category_group

  monetize :amount_cents
end
