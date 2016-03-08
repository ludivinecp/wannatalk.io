# require 'rails_helper'

# describe Subject do

<<<<<<< 4b3769ab81b09b6d9f39148c0453bb9f092e2fcf
  it "has a valid factory" do
  FactoryGirl.create(:subject).should be_valid
  end
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
<<<<<<< ef24dcc234cf83fe845f5f9fdf7bcb3a837d1d61
  it { is_expected.to validate_presence_of(:questioner) }
  it { is_expected.to validate_presence_of(:conference) }

  it { should have_many(:interested) } #through association
  it { should belong_to(:questioner) }
=======
  it { is_expected.to validate_presence_of(:participant) }
  it { is_expected.to validate_presence_of(:conference) }

  it { should have_many(:interested) } #through association
  it { should belong_to(:participant) }
>>>>>>> set foreign key for interested people
  it { should belong_to(:conference) }
=======
#   it "has a valid factory" do
#   FactoryGirl.create(:subject).should be_valid
#   end
#   it { is_expected.to validate_presence_of(:title) }
#   it { is_expected.to validate_presence_of(:description) }
#   it { is_expected.to validate_presence_of(:participant) }
#   it { is_expected.to validate_presence_of(:conference) }

#   it { should have_many(:interested) } #through association
#   it { should belong_to(:participant) }
#   it { should belong_to(:conference) }
>>>>>>> Change participant_id (FK) name into tables subject and subject_participant

# end

