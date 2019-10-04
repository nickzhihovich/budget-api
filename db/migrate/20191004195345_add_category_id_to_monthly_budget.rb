class AddCategoryIdToMonthlyBudget < ActiveRecord::Migration[6.0]
  def change
    add_reference :monthly_budgets, :category
  end
end
