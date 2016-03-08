require 'rails_helper'

describe Subject do

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

end

