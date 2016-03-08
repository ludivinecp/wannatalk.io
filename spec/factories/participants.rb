require 'faker'

FactoryGirl.define do
  factory :participant do |f|
    f.name {Faker::Name.name}
    f.email {Faker::Internet.email}
    f.password {Faker::Internet.password(8)}
  end
end