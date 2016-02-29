require 'spec_helper'

RSpec.describe Participant, type: :model do
  it "has a valid factory" do
  	FactoryGirl.create(:participant).should be_valid
  end 
  it "is invalid without a name" do
 	 FactoryGirl.build(:participant, name: nil).should_not be_valid
  end
end