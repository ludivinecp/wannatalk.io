class Conference < ActiveRecord::Base
  validates_presence_of :title, :date
  has_many :subjects
  has_many :conference_participants
	has_many :participants, through: :conference_participants

end
