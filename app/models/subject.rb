class Subject < ActiveRecord::Base
  validates_presence_of  :title, :conference, :description, :questioner

  has_many :subject_participants, :dependent => :destroy
  has_many :interested, through: :subject_participants, :class_name => "Participant", :foreign_key => "interested_id" #interested
  belongs_to :questioner, :class_name => "Participant" #questioner
  belongs_to :conference
end
