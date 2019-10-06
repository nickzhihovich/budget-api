require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
# then, whenever you need to clean the DB
DatabaseCleaner.clean

user = User.create!(email: 'nickzhihovich@gmail.com', password: 'passpass')
budget = Budget.create!(name: 'Home', user: user)

# deposit = Account.create!(
#   title: 'My deposit',
#   amount_cents: 5000,
#   amount_currency: 'BYN',
#   budgets: budgets,
#   type: 'deposit'
# )
#
# credit = Account.create!(
#   title: 'My credit',
#   amount_cents: 2000,
#   amount_currency: 'BYN',
#   budgets: budgets,
#   type: 'credit'
# )

# Create default categories for budget
Budgets::DefaultCategoryCreator.new(budget).call
