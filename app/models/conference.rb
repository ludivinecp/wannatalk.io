class Conference < ActiveRecord::Base
  validates_presence_of :title, :date
  has_many :subjects, :dependent => :destroy
  has_many :conference_participants, :dependent => :destroy
  has_many :participants, through: :conference_participants

end
