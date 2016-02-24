class Participant < ActiveRecord::Base
  validates :name, presence: true
  has_many :subjects, through: :subject_participants, :class_name => "Participant", :foreign_key => "questioner_id"
end
