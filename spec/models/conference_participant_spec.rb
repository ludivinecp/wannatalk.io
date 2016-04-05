require 'rails_helper'

describe ConferenceParticipant do
	let(:participant) { FactoryGirl.create(:participant) }
  it "has a valid factory" do
  FactoryGirl.create(:conference_participant).should be_valid
  end
  it { is_expected.to validate_presence_of(:participant_id) }
  it { is_expected.to validate_presence_of(:conference_id) }

  it { should belong_to(:participant) }
  it { should belong_to(:conference) }

end
