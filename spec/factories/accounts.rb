FactoryBot.define do
  factory :account do
    title { Faker::Internet.username }
    amount_cents { Faker::Number.number(digits: 5) }
    amount_currency 'BYN'
    budget

    trait :credit do
      kind 'credit'
    end

    trait :deposit do
      kind 'deposit'
    end
  end
end
