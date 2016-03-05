class Subject < ActiveRecord::Base
  validates_presence_of  :title, :participant, :conference, :description

  has_many :interested, through: :subject_participants, :class_name => "Participant" , :foreign_key => "participant_id" #interested
  has_many :subject_participants
  belongs_to :participant, :class_name => "Participant" #questioner
  belongs_to :conference
end
