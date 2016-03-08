class SubjectParticipant < ActiveRecord::Base
	belongs_to :interested, :class_name => "Participant", :foreign_key => "participant_id" #interested
    belongs_to :subject
    validates_presence_of :participant_id, :subject_id
end
