FactoryBot.define do
  factory :transaction do
    amount_cents { Faker::Number.number(digits: 5) }
    amount_currency 'BYN'
    date { Faker::Date.forward(days: 23) }

    factory :balance_transactions do
      transactinable { |transaction| transaction.association(:balance_transaction) }
    end
  end
end

