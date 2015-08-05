FactoryGirl.define do
  factory :todo do
    sequence(:title) do |n|
      "Example task ##{n}"
    end
  end

  trait :completed do
    completed true
  end
end
