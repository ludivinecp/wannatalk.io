class Subject < ActiveRecord::Base
  validates_presence_of  :title, :questioner, :conference, :description

  has_many :interested, through: :subject_participants, :class_name => "Participant", :foreign_key => "interested_id" #interested
  has_many :subject_participants
  belongs_to :questioner, :class_name => "Participant" #questioner
  belongs_to :conference
end
