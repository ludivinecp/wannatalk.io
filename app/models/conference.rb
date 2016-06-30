class Conference < ActiveRecord::Base
  validates_presence_of :title, :date
  has_many :subjects
  has_many :conference_participants
	has_many :participants, through: :conference_participants

  def self.save_conference_from_api
    response = ApiMeetup.new.events('parisrb')
    api_data = JSON.parse(response.body)
      conferences = api_data.map do |line|
        next if line['name'].nil? ||line['time'].nil? || !line['name'].include?('ParisRb.new(premier: :mardi, pour: :talks)')
        conference = Conference.new
        conference.title = line['name']
        conference.date = line['time']
        conference.url = line['link']
        conference.save!
      end
    Conference.all
  end
end
