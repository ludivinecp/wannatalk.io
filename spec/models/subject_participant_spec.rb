require 'spec_helper'

RSpec.describe SubjectParticipant, type: :model do
  it "has a valid factory" do
  	FactoryGirl.create(:subject_participant).should be_valid
  end 
    it "is invalid without a participant_id (interested)" do
 	 FactoryGirl.build(:subject_participant, participant_id: nil).should_not be_valid
  end

  it "is invalid without a conference_id" do
 	 FactoryGirl.build(:subject_participant, conference_id: nil).should_not be_valid
  end

end