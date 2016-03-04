require 'faker'

FactoryGirl.define do
  factory :conference do |f|
    f.title {Faker::Name.title}
    f.date {Faker::Date.forward(1)}
  end
end