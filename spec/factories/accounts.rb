FactoryBot.define do
  factory :account do
    title { Faker::Internet.username }
    amount_cents { Faker::Number.number(digits: 5) }
    amount_currency 'BYN'
    budget

    trait :credit do
      type 'credit'
    end

    trait :debt do
      type 'deposit'
    end
  end
end
