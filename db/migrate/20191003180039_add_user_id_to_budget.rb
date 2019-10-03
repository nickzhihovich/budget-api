class AddUserIdToBudget < ActiveRecord::Migration[6.0]
  def change
    add_reference :budgets, :user
  end
end
