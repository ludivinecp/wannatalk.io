require 'spec_helper'

RSpec.describe SubjectParticipant, type: :model do
  it "has a valid factory" do
  	FactoryGirl.create(:subject_participant).should be_valid
  end 
    it "is invalid without a participant_id (interested)" do
 	 FactoryGirl.build(:subject_participant, participant_id: nil).should_not be_valid
  end

  it "is invalid without a subject_id" do
 	 FactoryGirl.build(:subject_participant, subject_id: nil).should_not be_valid
  end

# it "belong to one participant" do
#     associations = Subject.reflect_on_association(:participant).macro
#     expect(associations).to eq :belongs_to
#   end 

#   it "belong to one subject" do
#     associations = Subject.reflect_on_association(:subject).macro
#     expect(associations).to eq :belongs_to
#   end 




end