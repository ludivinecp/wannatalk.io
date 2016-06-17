require 'rails_helper'

describe Participant do

  it "has a valid factory" do
  FactoryGirl.create(:participant).should be_valid
  end
  it { should have_many(:subjects) } #through association
  it { should have_many(:conferences) } #through association
  it { should have_many(:subjects_interested_in) }

end

