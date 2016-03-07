require 'rails_helper'

describe Subject do

  it "has a valid factory" do
  FactoryGirl.create(:subject).should be_valid
  end
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:questioner) }
  it { is_expected.to validate_presence_of(:conference) }

  it { should have_many(:interested) } #through association
  it { should belong_to(:questioner) }
  it { should belong_to(:conference) }

end

