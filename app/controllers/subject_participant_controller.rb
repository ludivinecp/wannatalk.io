class SubjectParticipantController < ApplicationController
  before_action :authenticate_participant!

  def show
  end

  def create
  @conferences = Conference.save_conference_from_api.current_conferences #TODO REFACTO
  @subject_participant = SubjectParticipant.new(subject_participant_params)

    if @subject_participant.save
      redirect_to(:back)
    else
      redirect_to(:back)
    end
  end

  def show
  end

  def destroy
    @subject_participant = SubjectParticipant.find(params[:id])
    @subject_participant.destroy
    flash[:alert] = "Participation annulée"
    redirect_to(:back)

  end

  def subject_participant_params
    params.permit(:interested_id, :subject_id)
  end

end
