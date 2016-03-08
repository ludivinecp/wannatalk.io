require 'faker'

FactoryGirl.define do
  factory :conference do |f|
    f.title {Faker::Name.title}
    f.date {Faker::Date.forward(1)}
    # f.subject {|p| [p.association(:subject]}
  end
end