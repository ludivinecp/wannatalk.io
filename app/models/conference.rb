class Conference < ActiveRecord::Base
  validates_presence_of :title, :date
  has_many :subjects
  has_many :conference_participants
	has_many :participants, through: :conference_participants
  validates :date, :url, :uniqueness => true

  def data_from_api
    response = ApiMeetup.new.events('parisrb')
    api_data = JSON.parse(response.body)

    api_data
  end

  #Keep only Paris RB conferences
  def parisrb_conferences(api_data)
    parisrb = []
    api_data.each do |event|
      if event["name"] == "ParisRb.new(premier: :mardi, pour: :talks)"
        parisrb << event
      end
    end
    parisrb
  end

  #Save Paris RB conferences from the Meetup API
  def self.save_conference_from_api
    data = Conference.new.data_from_api
    Conference.new.parisrb_conferences(data).map do |line|
      conference = Conference.new
      conference.title = line['name']
      conference.date = line['time']
      conference.url = line['link']
      if conference.valid?
        conference.save
      end
    end
   Conference.all
  end

  # def self.current_conferences
  #   self.each  do |conf|
  #     if conf.date < Time.now
  #       conf.destroy!
  #     end
  #     Conference.all
  #   end
  # end
end


