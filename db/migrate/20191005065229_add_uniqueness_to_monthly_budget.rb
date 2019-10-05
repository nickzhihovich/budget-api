class AddUniquenessToMonthlyBudget < ActiveRecord::Migration[6.0]
  def change
    add_index :monthly_budgets, [:date, :category_id, :budget_id], unique: true
  end
end
