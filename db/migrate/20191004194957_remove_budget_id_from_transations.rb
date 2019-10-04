class RemoveBudgetIdFromTransations < ActiveRecord::Migration[6.0]
  def change
    remove_reference :transactions, :budget
  end
end
