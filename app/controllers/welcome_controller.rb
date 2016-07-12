class WelcomeController < ApplicationController
  def index
    @conferences = Conference.save_conference_from_api.current_conferences #TODO REFACTO
  end
end
