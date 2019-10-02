class Category < ApplicationRecord
  belongs_to :category_group

  monetize :amount
end
