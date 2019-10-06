module Budgets
  class DefaultCategoryCreator < Struct.new(:budget)
    def call
      category_list.each do |category_group_settings|
        category_group = CategoryGroup.create(title: category_group_settings['title'], budget: budget)
        create_categories(category_group_settings['categories'], category_group)
      end
    end

    private

    def create_categories(categories_names, category_group)
      categories_names.each do |category_name|
        Category.create(title: category_name, category_group_id: category_group.id)
      end
    end

    def category_list
      JSON.parse(File.read(path_to_categories_list))
    end

    def path_to_categories_list
      Rails.root.join('lib', 'settings', 'default_categories_groups.json')
    end
  end
end
