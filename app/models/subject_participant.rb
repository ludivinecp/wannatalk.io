class SubjectParticipant < ActiveRecord::Base
	belongs_to :interested, :class_name => "Participant" #interested
    belongs_to :subject
    validates_presence_of :interested_id, :subject_id
end
