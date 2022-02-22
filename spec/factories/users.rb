FactoryBot.define do
  factory :user do
    username { "MyString" }
    email { Faker::Internet::email }
    password { 'test123456' }
  end
end
