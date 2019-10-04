class CreateMonthlyBudgets < ActiveRecord::Migration[6.0]
  def change
    create_table :monthly_budgets do |t|
      t.monetize :amount
      t.monetize :expenses
      t.references :budget
      t.date :date
    end
  end
end
