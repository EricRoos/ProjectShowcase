FactoryBot.define do
  factory :project do
    title { Faker::Company.bs }
    association :creator, factory: :user
  end
end
