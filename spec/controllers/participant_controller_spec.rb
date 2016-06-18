require 'rails_helper'
RSpec.describe Participant, type: :model do
  before(:each) do
    @user = build(:participant)
  end
  describe '[validations]' do
    it 'is valid' do
     expect(@user).to be_valid
     end
    it "should have a matching email" do
      expect(@user.email).to eq @user.email
    end
    it 'is not valid without an email' do
      @user.email = nil
      expect(@user).to_not be_valid
    end
    it "should have a matching password" do
      expect(@user.password).to eq @user.password
    end
    it 'is not valid without an password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end
    # it "should have a matching admin" do
    #   expect(@user.admin).to eq(false)
    # end
  end
end