require 'spec_helper'

# account_user = create(:account_user, user: user, account: account)

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



end