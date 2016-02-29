class Subject < ActiveRecord::Base
  validates :title, presence: true
  validates :participant_id, presence: true
  validates :conference_id, presence: true
  validates :description, presence: true

  has_many :participants, through: :subject_participants, :class_name => "Participant", :foreign_key => "interested_id"
  belongs_to :participant, :class_name => "Participant", :foreign_key => "questioner_id"
  belongs_to :conference
end
