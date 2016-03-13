class ConferenceParticipant < ActiveRecord::Base
    validates_presence_of :participant_id, :conference_id
	belongs_to :participant
    belongs_to :conference

end
