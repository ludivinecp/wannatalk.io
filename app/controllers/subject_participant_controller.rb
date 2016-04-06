class SubjectParticipantController < ApplicationController

  def new
   @subject_participant = SubjectParticipant.new
  end

  def create
  @subject_participant = SubjectParticipant.new(subject_participant_params)

    respond_to do |format|
      if @subject_participant.save
        format.html { redirect_to @subject, notice: 'Participation was successfully created.' }
        format.json { render :show, status: :created, location: @subject_participant }
      else
        format.html { render :new }
        format.json { render json: @subject_participant.errors, status: :unprocessable_entity }
      end
    end
  end

  def subject_participant_params
    params.require(:subject_participant).permit(:interested, :subject)
  end

end
