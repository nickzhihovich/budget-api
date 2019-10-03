class CreateBalanceTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :balance_transactions do |t|
      t.string :comment

      t.timestamps
    end
  end
end
