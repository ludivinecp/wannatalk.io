require 'rails_helper'

describe SubjectParticipant do

  it "has a valid factory" do
  FactoryGirl.create(:subject_participant).should be_valid
  end
  it { is_expected.to validate_presence_of(:interested_id) }
  it { is_expected.to validate_presence_of(:subject_id) }

  it { should belong_to(:interested) }
  it { should belong_to(:subject) }

end

