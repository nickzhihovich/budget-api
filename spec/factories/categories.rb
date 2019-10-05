FactoryBot.define do
  factory :category do
    category_group
    title { Faker::Internet.user_name(5..15) }
  end
end
