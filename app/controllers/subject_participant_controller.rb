class SubjectParticipantController < ApplicationController

  def new
   @subject_participant = SubjectParticipant.new
  end

  def create
  @subject_participant = SubjectParticipant.new(subject_participant_params)

    if @subject_participant.save
      redirect_to subjects_path, notice: 'Votre participation a été enregistré'
    else
      redirect_to subjects_path
    end
  end

  def subject_participant_params
    params.permit(:interested_id, :subject_id)
  end

end
