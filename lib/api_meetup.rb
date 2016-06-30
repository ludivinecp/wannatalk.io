class ApiMeetup
  BASE_URI = "https://api.meetup.com"

  def events(urlname)
    HTTParty.get(BASE_URI + "/#{urlname}/events")
  end
end
