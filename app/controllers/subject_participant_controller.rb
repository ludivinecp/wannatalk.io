class SubjectParticipantController < ApplicationController
  before_action :authenticate_participant!

  def show
  end

  def create
  @subject_participant = SubjectParticipant.new(subject_participant_params)

    if @subject_participant.save
      redirect_to subjects_path, notice: 'Votre participation a été enregistré'
    else
      redirect_to subjects_path
    end
  end

  def show
  end

  def destroy
    @subject_participant = SubjectParticipant.find(params[:id])
    @subject_participant.destroy
    flash[:alert] = "Participation annulée"
    redirect_to subjects_path
  end

  def subject_participant_params
    params.permit(:interested_id, :subject_id)
  end

end
