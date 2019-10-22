FactoryBot.define do
  factory :category_group do
    title { Faker::Internet.slug }
  end
end
