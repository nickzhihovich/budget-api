FactoryBot.define do
  factory :category do
    category_group
    title { Faker::Internet.slug }
  end
end
