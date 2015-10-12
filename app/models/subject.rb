class Subject < ActiveRecord::Base
  belongs_to :participant
  belongs_to :conference
end
