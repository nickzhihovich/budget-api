class RenameColumnTypeInAccounts < ActiveRecord::Migration[6.0]
  def change
    rename_column :accounts, :type, :kind
  end
end
