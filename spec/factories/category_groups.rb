FactoryBot.define do
  factory :category_group do
    budget
    title { Faker::Internet.user_name(5..15) }
  end
end
