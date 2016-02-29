class Conference < ActiveRecord::Base
  validates_presence_of :title, :date
  has_many :subjects
end
