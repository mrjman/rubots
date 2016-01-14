FactoryGirl.define do
  factory :project do
    title { Faker::Company.name }
    description { Faker::Company.bs }
  end
end
