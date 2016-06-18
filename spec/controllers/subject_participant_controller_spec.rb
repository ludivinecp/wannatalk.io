require 'rails_helper'

# RSpec.describe SubjectParticipantController do
#   let(:participant) {build(:subject_participant)}

#   describe "GET #create" do
#     it "create a new participation to a subject" do
#       expect(SubjectParticipant).to receive(:new).with({subject_id: 1})
#       expect(SubjectParticipant).to receive(:save).and_return(true)
#       post :create, subject_participant: {subject_id: 1}
#       expect(response).to redirect_to(subject_participant)
#     end
# end
# end
describe SubjectParticipantController do
  before(:each) do
    sign_in_with("lulu@wanna.fr", "aaaaaaaa")
  end

  it "should have a current_user" do
    expect(subject.current_participant).to_not eq(nil)
  end

  it "should get new" do
    get 'new'
    response.should be_success
  end
end