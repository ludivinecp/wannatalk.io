class SubjectParticipant < ActiveRecord::Base
	belongs_to :participant, :class_name => "Participant", :foreign_key => "interested_id"
    belongs_to :subject
    validates_presence_of :participant_id, :conference_id
end
