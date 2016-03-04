require 'rails_helper'

# RSpec.describe Conference, type: :model do
#   it "has a valid factory" do
#   	FactoryGirl.create(:conference).should be_valid
#   end 
#   it "is invalid without a title" do
#  	 FactoryGirl.build(:conference, title: nil).should_not be_valid
#   end
#   it "is invalid without a date" do
#  	 FactoryGirl.build(:conference, date: nil).should_not be_valid
#   end
# end

describe Conference do

  it "has a valid factory" do
  FactoryGirl.create(:conference).should be_valid
  end
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:date) }

  it { should have_many(:subjects) } 

end

