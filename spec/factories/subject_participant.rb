require 'faker'
FactoryGirl.define do
  factory :subject_participant do |f|
		association :interested, factory: :participant 
		subject
	end 
end

    
