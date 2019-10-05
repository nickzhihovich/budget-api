FactoryBot.define do
  factory :monthly_budget do
    title { Faker::Internet.username }
    amount_cents { Faker::Number.number(digits: 5) }
    amount_currency 'BYN'
    expenses_cents { Faker::Number.number(digits: 5) }
    expenses_currency 'BYN'
    budget
    category
    date { Faker::Date.forward(days: 53) }
  end
end
