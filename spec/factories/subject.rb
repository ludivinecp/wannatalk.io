require 'faker'

FactoryGirl.define do
  factory :subject do |f|
    f.title {Faker::Name.title}
    f.description {Faker::Lorem.paragraph}
    conference
    association :questioner, factory: :participant 
  end
end