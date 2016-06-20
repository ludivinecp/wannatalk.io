class SubjectParticipant < ActiveRecord::Base
  validates :interested_id, presence: true 
	validates :subject_id, presence: true, uniqueness: { scope: :interested_id}
	belongs_to :interested, :class_name => "Participant" #interested
  belongs_to :subject
end
