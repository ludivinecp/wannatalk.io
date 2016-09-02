class ApiMeetup
  BASE_URI = "https://api.meetup.com"

  def group_events(urlname)
    HTTParty.get(BASE_URI + "/#{urlname}/events")
  end
end
