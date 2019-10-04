class RemoveAmountFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_monetize :categories, :amount
    remove_monetize :category_groups, :amount
  end
end
