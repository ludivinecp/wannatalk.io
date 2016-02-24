class Subject < ActiveRecord::Base
  validates :title, presence: true
  validates :participant, presence: true
  validates :conference, presence: true

  has_many :participants, through: :interested_in
 	belongs_to :participant 

  belongs_to :participant
  belongs_to :conference
end
