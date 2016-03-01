require 'faker'

FactoryGirl.define do
  factory :subject_participant do |f|
    f.participant_id {Faker::Number.digit}
    f.subject_id {Faker::Number.digit}
    f.association :participant
    f.association :subject
  end
end