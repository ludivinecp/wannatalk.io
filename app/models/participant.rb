class Participant < ActiveRecord::Base
  validates :name, presence: true
  has_many :subjects
  has_many :posts, through: "user_posts"
end
