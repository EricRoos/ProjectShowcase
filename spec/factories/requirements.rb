FactoryBot.define do
  factory :requirement do
    project { nil }
    story { 'foo' }
    description { 'foo' }
  end
end
