class Participant < ActiveRecord::Base
    validates :name, presence: true

    has_many :subjects
end
