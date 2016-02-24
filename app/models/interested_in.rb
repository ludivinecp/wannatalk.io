class InterestedIn < ActiveRecord::Base
	belongs_to :participants
	belongs_to :subjects
end
