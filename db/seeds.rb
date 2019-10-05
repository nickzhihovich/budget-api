require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
# then, whenever you need to clean the DB
DatabaseCleaner.clean

user = User.create!(email: 'nickzhihovich@gmail.com', password: 'passpass')
budget = Budget.create!(name: 'Home', user: user)

deposit = Account.create!(
  title: 'My deposit',
  amount_cents: 5000,
  amount_currency: 'BYN',
  budget: budget,
  type: 'deposit'
)

credit = Account.create!(
  title: 'My credit',
  amount_cents: 2000,
  amount_currency: 'BYN',
  budget: budget,
  type: 'credit'
)

category_group_learning = CategoryGroup.create!(title: 'Learning', budget: budget)
category_group_fun = CategoryGroup.create!(title: 'Fun', budget: budget)
category_group_general = CategoryGroup.create!(title: 'General expenses', budget: budget)
category_group_software = CategoryGroup.create!(title: 'Software', budget: budget)

category1 = Category.create!(title: 'English', category_group: category_group_learning)
category2 = Category.create!(title: 'Udemy courses', category_group: category_group_learning)
category3 = Category.create!(title: 'Bars', category_group: category_group_fun)
category4 = Category.create!(title: 'Cafe', category_group: category_group_fun)
category5 = Category.create!(title: 'Bowling', category_group: category_group_fun)
category6 = Category.create!(title: 'Home payments', category_group: category_group_general)
category7 = Category.create!(title: 'Internet', category_group: category_group_general)
category8 = Category.create!(title: 'Mobile', category_group: category_group_general)
category9 = Category.create!(title: 'Petrol', category_group: category_group_general)
category10 = Category.create!(title: 'Rubymine', category_group: category_group_software)
