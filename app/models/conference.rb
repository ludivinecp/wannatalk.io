class Conference < ActiveRecord::Base
  validates :title, presence: true
  validates :date, presence: true

  #attr_accessible :title

  has_many :subject
end
