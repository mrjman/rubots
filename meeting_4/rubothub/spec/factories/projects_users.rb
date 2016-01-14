FactoryGirl.define do
  factory :projects_user do
    association :user
    association :project
  end
end
