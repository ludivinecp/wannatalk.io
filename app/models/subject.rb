class Subject < ActiveRecord::Base
  validates :title, presence: true
  validates :participant, presence: true
  validates :conference, presence: true

  belongs_to :participant
  belongs_to :conference
end
