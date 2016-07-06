require 'faker'

FactoryGirl.define do
  factory :conference do |f|
    f.title {Faker::Name.title}
    f.date {Faker::Date.forward(1)}
    f.url {Faker::Internet.url}
  end
end
