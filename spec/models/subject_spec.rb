require 'spec_helper'

RSpec.describe Subject, type: :model do
  it "has a valid factory" do
  	FactoryGirl.create(:subject).should be_valid
  end 
  it "is invalid without a title" do
 	 FactoryGirl.build(:subject, title: nil).should_not be_valid
  end
  it "is invalid without a description" do
 	 FactoryGirl.build(:subject, description: nil).should_not be_valid
  end
    it "is invalid without a participant_id (questionner)" do
 	 FactoryGirl.build(:subject, participant_id: nil).should_not be_valid
  end

  it "is invalid without a conference_id" do
 	 FactoryGirl.build(:subject, conference_id: nil).should_not be_valid
  end

end