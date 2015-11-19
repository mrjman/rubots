FactoryGirl.define do
  factory :user do
    first_name "Rob"
    last_name "Allen"
    email "test@test.com"
    password  { Faker::Internet.password }
  end

end
