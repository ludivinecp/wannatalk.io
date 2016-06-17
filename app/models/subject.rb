class Subject < ActiveRecord::Base
  validates_presence_of  :title, :questioner, :conference, :description

  has_many :subject_participants
  has_many :interested, through: :subject_participants #interested
  belongs_to :questioner, class_name: "Participant"
  belongs_to :conference
end