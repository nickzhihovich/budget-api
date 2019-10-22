class RemoveBudget < ActiveRecord::Migration[6.0]
  def change
    remove_index :category_groups, name: 'index_category_groups_on_budget_id'
    remove_index :category_groups, name: 'index_category_groups_on_title_and_budget_id'
    remove_index :monthly_budgets, name: 'index_monthly_budgets_on_budget_id'
    remove_index :monthly_budgets, name: 'index_monthly_budgets_on_date_and_category_id_and_budget_id'
    remove_index :accounts, name: 'index_accounts_on_budget_id'
    remove_column :accounts, :budget_id
    remove_column :category_groups, :budget_id
    remove_column :monthly_budgets, :budget_id
    drop_table :budgets
  end
end
