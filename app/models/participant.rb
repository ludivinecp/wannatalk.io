class Participant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :subject_participants, class_name: "SubjectParticipant", foreign_key: "interested_id"
	has_many :subjects_interested_in, through: :subject_participants, :source => "subject"
	has_many :subjects, foreign_key: "questioner_id"
	has_many :conference_participants
	has_many :conferences, through: :conference_participants
end
