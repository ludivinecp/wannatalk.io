class Subject < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :participant
  belongs_to :conference
end
