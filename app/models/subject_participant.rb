class SubjectParticipant < ActiveRecord::Base
    validates_presence_of :interested_id, :subject_id
	belongs_to :interested, :class_name => "Participant" #interested
    belongs_to :subject
end
