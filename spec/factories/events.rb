# spec/factories/events.rb

FactoryGirl.define do
  factory :event do
    name "Yoga"
    description { Faker::Lorem.sentence(40) }
    location  { Faker::Address.city }
    price { Faker::Commerce.price }
    capacity { Faker::Commerce.capacity }
    includes_food false
    includes_drinks true
    starts_at { Faker::Date.starts_at }
    ends_at { Faker::Date.ends_at }
    user { build(:user) }

    trait :active do
      active true
    end
    trait :inactive do
      active false
    end
  end
end
