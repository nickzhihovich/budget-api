FactoryBot.define do
  factory :budget do
    name { Faker::Internet.username }
    user
  end
end
