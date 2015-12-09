FactoryGirl.define do
  factory :project do
    title { Faker::Lorem.characters(10) }
    description { Faker::Lorem.paragraph }
  end
end
