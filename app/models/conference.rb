class Conference < ActiveRecord::Base
  validates_presence_of :title, :date, :url
  has_many :subjects
  has_many :conference_participants
  has_many :participants, through: :conference_participants
  validates :date, :uniqueness => true
  scope :current_conferences, -> {where("date > ?", Time.now)}

  @@conf = 'ParisRb'
  def self.data_from_api
    response = ApiMeetup.new.events(@@conf)
    api_data = JSON.parse(response.body)

    api_data
  end

  #Keep only requested conferences
  def self.conferences_filter(api_data)
    requested_conferences = []
    api_data.each do |event|
      if event["name"].include?(@@conf)
        requested_conferences << event
      end
    end
    requested_conferences
  end


  #Save requested conferences from the Meetup API
  def self.save_conferences_from_api
    data = data_from_api
    conferences_filter(data).each do |line|
      conference = self.new
      conference.title = line['name']
      conference.date = format_date(line['time'])
      conference.url = line['link']
      if conference.valid?
        conference.save
      end
    end
   self.all
  end

  def self.format_date(date)
   DateTime.strptime(date.to_s,'%Q')
  end
end


