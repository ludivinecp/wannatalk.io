require 'spec_helper'

RSpec.describe Participant, type: :model do
  it "has a valid factory"
  	Factory.create(:participant).should be_valid
  it "is invalid without a name"
  it "returns a participant's full name as a string"
end