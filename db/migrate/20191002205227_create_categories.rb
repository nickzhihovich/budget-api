class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.monetize :amount
      t.string :title
      t.references :category_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
