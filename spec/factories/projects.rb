FactoryBot.define do
  factory :project do
    title { "MyString" }
    association :creator, factory: :user
  end
end
