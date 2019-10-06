FactoryBot.define do
  factory :category_group do
    budget
    title { Faker::Internet.slug }
  end
end
