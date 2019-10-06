class AddIndexesToCategoriesAndCategoryGroups < ActiveRecord::Migration[6.0]
  def change
    add_index :categories, [:title, :category_group_id], unique: true
    add_index :category_groups, [:title, :budget_id], unique: true
  end
end
