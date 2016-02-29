require 'faker'

FactoryGirl.define do
  factory :subject_participant do |f|
    f.participant_id {Faker::Number.digit}
    f.conference_id {Faker::Number.digit}
  end
end