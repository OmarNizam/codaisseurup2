# spec/factories/users.rb

FactoryGirl.define do
  factory :user do
    email    { Facker::Internet.email }
    password { Faker::Internet.password }
  end
end
