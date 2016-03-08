class Participant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name
	# belongs_to :subjects, through: :subject_participants, :class_name => "Participant", :foreign_key => "interested_id"
	has_many :subjects #questioner
	has_many :subjects, through: :subject_participants #interested
	has_many :conference_participants
	has_many :conferences, through: :conference_participants
end
