class Subject < ActiveRecord::Base
  validates_presence_of  :title, :questioner, :conference, :description

  has_many :subject_participants
  has_many :interested, through: :subject_participants #interested
  belongs_to :questioner, class_name: "Participant"
  belongs_to :conference

  def participation(current_participant) 
  	self.subject_participants.find_by_interested_id(current_participant.id)
  end
end