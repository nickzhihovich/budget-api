class CreateCategoryGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :category_groups do |t|
      t.integer :amount
      t.string :title
      t.references :budget

      t.timestamps
    end
  end
end
