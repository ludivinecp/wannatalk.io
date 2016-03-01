require 'faker'

FactoryGirl.define do
  factory :subject do |f|
    f.title {Faker::Name.title}
    f.description {Faker::Lorem.paragraph}
    f.participant_id {Faker::Number.digit}
    f.conference_id {Faker::Number.digit}
    # f.participants {|p| [p.association(:participant]}
  end
end