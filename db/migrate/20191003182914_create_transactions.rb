class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.monetize :amount
      t.date :date
      t.references :budget
      t.references :transactinable, polymorphic: true

      t.timestamps
    end
  end
end
