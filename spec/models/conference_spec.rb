require 'rails_helper'

describe Conference do

  it "has a valid factory" do
  FactoryGirl.create(:conference).should be_valid
  end
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:date) }
  it { should have_many(:subjects) } 
  it { should have_many(:participants) } 

end

