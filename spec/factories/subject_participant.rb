require 'faker'
FactoryGirl.define do
  factory :subject_participant do |f|
		f.participant FactoryGirl.create(:participant)
		f.subject FactoryGirl.create(:subject)
	end 
end

    
