class Subject < ActiveRecord::Base
  validates_presence_of  :title, :participant_id, :conference_id, :description

  has_many :participants, through: :subject_participants, :class_name => "Participant"
  belongs_to :participant, :class_name => "Participant"
  belongs_to :conference
end
