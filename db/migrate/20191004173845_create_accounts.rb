class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.monetize :amount
      t.string :title
      t.references :budget
      t.string :type

      t.timestamps
    end
  end
end
