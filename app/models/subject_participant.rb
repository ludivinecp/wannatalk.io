class SubjectParticipant < ActiveRecord::Base
	belongs_to :participant, :class_name => "Participant" #interested
    belongs_to :subject
    validates_presence_of :participant_id, :subject_id
end
